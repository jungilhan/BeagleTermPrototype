#ifndef SSHTERMINAL_HPP
#define SSHTERMINAL_HPP

#include <iostream>
#include <string>

#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <termios.h>
#include <unistd.h>
#include <assert.h>
#include <sys/ioctl.h>

#define SSH_NO_CPP_EXCEPTIONS
#include "libssh/libsshpp.hpp"
#include "Dispatcher.hpp"

#define HAVE_CFMAKERAW
#define AUTO_WRITE_HOST_FILE 1
#define FILE_LOG

#ifndef HAVE_CFMAKERAW
static void cfmakeraw(struct termios *termios_p)
{
    termios_p->c_iflag &= ~(IGNBRK | BRKINT | PARMRK | ISTRIP | INLCR | IGNCR | ICRNL | IXON);
    termios_p->c_oflag &= ~OPOST;
    termios_p->c_lflag &= ~(ECHO | ECHONL | ICANON | ISIG | IEXTEN);
    termios_p->c_cflag &= ~(CSIZE | PARENB);
    termios_p->c_cflag |= CS8;
}
#endif

class SSHTerminal {
public:
    SSHTerminal() : m_channel(0), m_dispatcher(0) {
        std::cout << "[BeagleTermPlugin::SSHTerminal]" << std::endl;
        init();
    }

    SSHTerminal(const std::string& host, const std::string& port, const std::string& user)
        : m_host(host)
        , m_port(port)
        , m_user(user)
        , m_channel(0)
        , m_dispatcher(0) {

        init();
	}

    ~SSHTerminal() {
        std::cout << "[BeagleTermPlugin::~SSHTerminal]" << std::endl;
        cleanup();
    }

    void setHost(const std::string& host) {
        m_host = host;
    }

    void setPort(const std::string& port) {
        m_port = port;
    }

    void setUser(const std::string& user) {
        m_user = user;
    }

    int connect(const std::string& host, const std::string& port, const std::string& user) {
        m_host = host;
        m_port = port;
        m_user = user;

        std::cout << "[INFO] connect: " << m_user << "@" << m_host << ":" << m_port << std::endl;

        if (m_host.empty() || m_port.empty() || m_user.empty())
            return -1;

        m_session.setOption(SSH_OPTIONS_HOST, m_host.c_str());
        m_session.setOption(SSH_OPTIONS_PORT_STR, m_port.c_str());
        m_session.setOption(SSH_OPTIONS_USER, m_user.c_str());

#ifndef _NO_DEBUG_LIBSSH
        m_session.setOption(SSH_OPTIONS_LOG_VERBOSITY_STR, "SSH_LOG_PROTOCOL");
#endif

        m_session.connect();
        return 0;
    }

    int connect() {
        std::cout << "[INFO] connect: " << m_user << "@" << m_host << ":" << m_port << std::endl;

        if (m_host.empty() || m_port.empty() || m_user.empty())
            return -1;

        m_session.setOption(SSH_OPTIONS_HOST, m_host.c_str());
        m_session.setOption(SSH_OPTIONS_PORT_STR, m_port.c_str());
        m_session.setOption(SSH_OPTIONS_USER, m_user.c_str());

#ifndef _NO_DEBUG_LIBSSH
        m_session.setOption(SSH_OPTIONS_LOG_VERBOSITY_STR, "SSH_LOG_PROTOCOL");
#endif

        m_session.connect();
        return 0;
    }

    void disconnect() {
        m_session.disconnect();
    }

    int userauthPassword(const std::string& password) {
        int ret = m_session.userauthPassword(password.c_str());
        if (ret == SSH_AUTH_SUCCESS) {
            std::cout << "[INFO] " << "login successed :)" << std::endl;
            initTerminal();
        } else {
            std::cout << "[ERROR] " << m_session.getError() << std::endl;
            ret = -1;
        }

        return ret;
    }

    int write(int keyCode) {
        char key = (char)keyCode;
        m_channel->write(&key, sizeof(char));
    }

    std::string read() {
        char buffer[4096];
        int readBytes;
        std::string stream;

#ifdef FILE_LOG
        FILE* log = fopen("shell.log", "a");
#endif
        while ((readBytes = m_channel->readNonblocking(buffer, sizeof(buffer), false)) > 0) {
            stream += std::string(buffer, readBytes);
#ifdef FILE_LOG
            fwrite(stream.c_str(), readBytes, 1, log);
#endif
            }

        if (!stream.empty())
            std::cout << stream << std::endl;

#ifdef FILE_LOG
        fclose(log);
#endif
        return stream;
        }

    int getRow() {
        struct winsize ws = {0, };

        int ret = ioctl(1, TIOCGWINSZ, &ws);
        if (ret < 0) {
            fprintf(stderr, "failed to getColumn\n");
            return ret;
        }

        return ws.ws_row;
    }

    int getColumn() {
        struct winsize ws = {0, };

        int ret = ioctl(1, TIOCGWINSZ, &ws);
        if (ret < 0) {
            fprintf(stderr, "failed to getColumn\n");
            return ret;
        }

        return ws.ws_col;
    }

    int verifyKnownHost(std::string& error) {
        char* hexa = NULL;
        unsigned char* hash = NULL;
        int state, hlen, ret = 0;

        state = m_session.isServerKnown();
        hlen = m_session.getPubKeyHash(&hash);

        switch (state) {
        case SSH_SERVER_KNOWN_OK:
            break;
        case SSH_SERVER_KNOWN_CHANGED:
            ret = -1;
            hexa = ssh_get_hexa(hash, hlen);
            fprintf(stderr, "Host key for server changed : server's one is now :\n");
            fprintf(stderr, "Public key hash is %s\n", hexa);
            fprintf(stderr, "For security reason, connection will be stopped\n");

            error = "Host key for server changed : server's one is now :\n";
            error += "Public key hash: ";
            error += std::string(hexa, strlen(hexa)) + "\n";
            error += "For security reason, connection will be stopped\n";
            break;
        case SSH_SERVER_FOUND_OTHER:
            ret = -1;
            fprintf(stderr, "The host key for this server was not found but an other type of key exists.\n");
            fprintf(stderr, "An attacker might change the default server key to confuse your client"
                            "into thinking the key does not exist\n"
                            "We advise you to rerun the client with -d or -r for more safety.\n");

            error = "The host key for this server was not found but an other type of key exists.\n";
            error += "An attacker might change the default server key to confuse your client";
            error += "into thinking the key does not exist\n";
            error += "We advise you to rerun the client with -d or -r for more safety.\n";
            break;
        case SSH_SERVER_FILE_NOT_FOUND:
            fprintf(stderr, "Could not find known host file. If you accept the host key here,\n");
            fprintf(stderr, "the file will be automatically created.\n");

            error = "Could not find known host file. If you accept the host key here,\n";
            error += "the file will be automatically created.\n";
        case SSH_SERVER_NOT_KNOWN:
            ret = 1;
            hexa = ssh_get_hexa(hash, hlen);
            fprintf(stderr, "The server is unknown.\n");
            fprintf(stderr, "Public key hash is %s\n", hexa);
            fprintf(stderr, "Do you trust the host key (yes/no)? ");

            error = "The server is unknown.\n";
            error += "Public key hash is ";
            error += std::string(hexa, strlen(hexa)) + "\n";
            error += "Do you trust the host key?";

            ssh_string_free_char(hexa);
            break;
        case SSH_SERVER_ERROR:
            ret = -1;
            fprintf(stderr, "%s", m_session.getError());

            error = m_session.getError();
            break;
        }

        ssh_clean_pubkey_hash(&hash);
        return ret;
    }

    int writeKnownHost() {
        if (m_session.writeKnownhost() < 0) {
            fprintf(stderr, "[SSHTerminal::writeKnownHost] error %s\n", strerror(errno));
            return -1;
                    }

        return 0;
    }

private:
    int init() {
        tcgetattr(STDIN_FILENO, &m_termios);

        return 0;
    }

    int cleanup() {
        cleanupTerminal();
        disconnect();

        return 0;
    }

private:
    void initTerminal() {
        if (!m_channel) {
            m_channel = new ssh::Channel(m_session);
            m_channel->openSession();
            m_channel->requestPty();
            m_channel->changePtySize(getColumn(), getRow());
            m_channel->requestShell();

            struct termios termiosLocal;
            cfmakeraw(&termiosLocal);
            tcsetattr(STDIN_FILENO, TCSANOW, &termiosLocal);
        }
        if (!m_dispatcher)
            m_dispatcher = new Dispatcher(&m_session, m_channel);
    }

    void cleanupTerminal() {
        if (m_channel) {
            m_channel->sendEof();
            m_channel->close();
            delete m_channel;
            m_channel = 0;

            tcsetattr(STDIN_FILENO, TCSANOW, &m_termios);
        }

        delete m_dispatcher;
        m_dispatcher = 0;
    }

    private:
    ssh::Session m_session;
    ssh::Channel* m_channel;

    std::string m_host;
    std::string m_port;
    std::string m_user;

    struct termios m_termios;
    Dispatcher* m_dispatcher;
    };

#endif /* SSHTERMINAL_HPP */
