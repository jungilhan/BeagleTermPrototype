/**********************************************************\

  Auto-generated BeagleTermPluginAPI.cpp

\**********************************************************/

#include "JSObject.h"
#include "variant_list.h"
#include "DOM/Document.h"
#include "global/config.h"

#include "BeagleTermPluginAPI.h"

///////////////////////////////////////////////////////////////////////////////
/// @fn BeagleTermPluginAPI::BeagleTermPluginAPI(const BeagleTermPluginPtr& plugin, const FB::BrowserHostPtr host)
///
/// @brief  Constructor for your JSAPI object.  You should register your methods, properties, and events
///         that should be accessible to Javascript from here.
///
/// @see FB::JSAPIAuto::registerMethod
/// @see FB::JSAPIAuto::registerProperty
/// @see FB::JSAPIAuto::registerEvent
///////////////////////////////////////////////////////////////////////////////
BeagleTermPluginAPI::BeagleTermPluginAPI(const BeagleTermPluginPtr& plugin, const FB::BrowserHostPtr& host) : m_plugin(plugin), m_host(host)
{
    registerMethod("echo",      make_method(this, &BeagleTermPluginAPI::echo));
    registerMethod("testEvent", make_method(this, &BeagleTermPluginAPI::testEvent));

    // Read-write property
    registerProperty("testString",
                     make_property(this,
                        &BeagleTermPluginAPI::get_testString,
                        &BeagleTermPluginAPI::set_testString));

    // Read-only property
    registerProperty("version",
                     make_property(this,
                        &BeagleTermPluginAPI::get_version));
}

///////////////////////////////////////////////////////////////////////////////
/// @fn BeagleTermPluginAPI::~BeagleTermPluginAPI()
///
/// @brief  Destructor.  Remember that this object will not be released until
///         the browser is done with it; this will almost definitely be after
///         the plugin is released.
///////////////////////////////////////////////////////////////////////////////
BeagleTermPluginAPI::~BeagleTermPluginAPI()
{
}

///////////////////////////////////////////////////////////////////////////////
/// @fn BeagleTermPluginPtr BeagleTermPluginAPI::getPlugin()
///
/// @brief  Gets a reference to the plugin that was passed in when the object
///         was created.  If the plugin has already been released then this
///         will throw a FB::script_error that will be translated into a
///         javascript exception in the page.
///////////////////////////////////////////////////////////////////////////////
BeagleTermPluginPtr BeagleTermPluginAPI::getPlugin()
{
    BeagleTermPluginPtr plugin(m_plugin.lock());
    if (!plugin) {
        throw FB::script_error("The plugin is invalid");
    }
    return plugin;
}



// Read/Write property testString
std::string BeagleTermPluginAPI::get_testString()
{
    return m_testString;
}
void BeagleTermPluginAPI::set_testString(const std::string& val)
{
    m_testString = val;
}

// Read-only property version
std::string BeagleTermPluginAPI::get_version()
{
    return FBSTRING_PLUGIN_VERSION;
}

// Method echo
FB::variant BeagleTermPluginAPI::echo(const FB::variant& msg)
{
    static int n(0);
    fire_echo(msg, n++);
    return msg;
}

void BeagleTermPluginAPI::testEvent(const FB::variant& var)
{
    fire_fired(var, true, 1);
}

