# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build

# Include any dependencies generated for this target.
include projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/depend.make

# Include the progress variables for this target.
include projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/progress.make

# Include the compile flags for this target's objects.
include projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/flags.make

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/flags.make
projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o: ../BeagleTermPluginAPI.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o -c /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/BeagleTermPluginAPI.cpp

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.i"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/BeagleTermPluginAPI.cpp > CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.i

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.s"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/BeagleTermPluginAPI.cpp -o CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.s

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.requires:
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.requires

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.provides: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.requires
	$(MAKE) -f projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/build.make projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.provides.build
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.provides

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.provides.build: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.provides.build

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/flags.make
projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o: ../BeagleTermPlugin.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o -c /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/BeagleTermPlugin.cpp

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.i"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/BeagleTermPlugin.cpp > CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.i

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.s"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/BeagleTermPlugin.cpp -o CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.s

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.requires:
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.requires

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.provides: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.requires
	$(MAKE) -f projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/build.make projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.provides.build
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.provides

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.provides.build: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.provides.build

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/flags.make
projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o: ../Factory.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o -c /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/Factory.cpp

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.i"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/Factory.cpp > CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.i

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.s"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/Factory.cpp -o CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.s

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.requires:
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.requires

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.provides: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.requires
	$(MAKE) -f projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/build.make projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.provides.build
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.provides

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.provides.build: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.provides.build

# Object files for target BeagleTermPlugin
BeagleTermPlugin_OBJECTS = \
"CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o" \
"CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o" \
"CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o"

# External object files for target BeagleTermPlugin
BeagleTermPlugin_EXTERNAL_OBJECTS =

bin/BeagleTermPlugin/npBeagleTermPlugin.so: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o
bin/BeagleTermPlugin/npBeagleTermPlugin.so: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o
bin/BeagleTermPlugin/npBeagleTermPlugin.so: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o
bin/BeagleTermPlugin/npBeagleTermPlugin.so: PluginCore/libPluginCore.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: projects/BeagleTermPlugin/PluginAuto/libBTP_PluginAuto.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: NpapiCore/libNpapiCore.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: ScriptingCore/libScriptingCore.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: PluginCore/libPluginCore.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: boost/libs/thread/libboost_thread.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: boost/libs/system/libboost_system.a
bin/BeagleTermPlugin/npBeagleTermPlugin.so: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/build.make
bin/BeagleTermPlugin/npBeagleTermPlugin.so: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../bin/BeagleTermPlugin/npBeagleTermPlugin.so"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BeagleTermPlugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/build: bin/BeagleTermPlugin/npBeagleTermPlugin.so
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/build

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/requires: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPluginAPI.cpp.o.requires
projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/requires: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/BeagleTermPlugin.cpp.o.requires
projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/requires: projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/Factory.cpp.o.requires
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/requires

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/clean:
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin && $(CMAKE_COMMAND) -P CMakeFiles/BeagleTermPlugin.dir/cmake_clean.cmake
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/clean

projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/depend:
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : projects/BeagleTermPlugin/CMakeFiles/BeagleTermPlugin.dir/depend

