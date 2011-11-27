#ifndef DISPATCHER_HPP
#define DISPATCHER_HPP

#include <stdio.h>
#include <assert.h>
#include <sys/select.h>

class Dispatcher {
public:
	Dispatcher(ssh::Session* session, ssh::Channel* channel)
		: m_session(session)
		, m_channel(channel) {

	}

	~Dispatcher() {

	}

	int run() {
		assert(m_session);
		assert(m_channel);

		fd_set fds;
		struct timeval timeout;
		char buffer[4096];
		bool eof = false;
		int state, length;

		while (m_channel->isOpen() && !m_channel->isEof()) {
			FD_ZERO(&fds);
			if (!eof)
				FD_SET(STDIN_FILENO, &fds);

			FD_SET(m_session->getSocket(), &fds);

			// watching the file descriptor
			timeout.tv_sec = 0;
			timeout.tv_usec = 1000;
			state = select(m_session->getSocket() + 1, &fds, NULL, NULL, &timeout);

			switch (state) {
			case EINTR:
				continue;
			case 0:
				//fprintf(stderr, "timeout expires\n");
				break;
			default:
				// reading input date from standard input
				if (FD_ISSET(STDIN_FILENO, &fds)) {
					length = read(STDIN_FILENO, buffer, sizeof(buffer));
					if (length) {
						m_channel->write(buffer, length);
					} else {
						eof = true;
						m_channel->sendEof();
					}
				}

				// reading data from remote stream
				if (FD_ISSET(m_session->getSocket(), &fds)) {
					int readBytes = 0;

					while ((readBytes = m_channel->readNonblocking(buffer, sizeof(buffer), false)) > 0) {
						if (write(STDOUT_FILENO, buffer, readBytes) < 0) {
							fprintf(stderr, "Error writing to buffer\n");
							return -1;
						}
					}
					switch (readBytes) {
					case SSH_ERROR:
						fprintf(stderr, "Error reading channel: %s\n", m_session->getError());
						return -1;
					case 0:
						if (m_channel->isEof()) {
							fprintf(stderr, "EOF received\n");
							fprintf(stderr, "exit-status: %d\n", m_channel->getExitStatus());
							return -1;
						}
						break;
					} // switch
				} // if

				break;
			} // switch
		} // while

		return 0;
	}

private:
	ssh::Session* m_session;
	ssh::Channel* m_channel;
};

#endif /* DISPATCHER_HPP */
