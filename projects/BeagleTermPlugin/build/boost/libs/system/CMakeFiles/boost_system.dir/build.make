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
include boost/libs/system/CMakeFiles/boost_system.dir/depend.make

# Include the progress variables for this target.
include boost/libs/system/CMakeFiles/boost_system.dir/progress.make

# Include the compile flags for this target's objects.
include boost/libs/system/CMakeFiles/boost_system.dir/flags.make

boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o: boost/libs/system/CMakeFiles/boost_system.dir/flags.make
boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o: /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath/src/3rdParty/boost/libs/system/src/error_code.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/boost_system.dir/src/error_code.cpp.o -c /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath/src/3rdParty/boost/libs/system/src/error_code.cpp

boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/boost_system.dir/src/error_code.cpp.i"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath/src/3rdParty/boost/libs/system/src/error_code.cpp > CMakeFiles/boost_system.dir/src/error_code.cpp.i

boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/boost_system.dir/src/error_code.cpp.s"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath/src/3rdParty/boost/libs/system/src/error_code.cpp -o CMakeFiles/boost_system.dir/src/error_code.cpp.s

boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.requires:
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.requires

boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.provides: boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.requires
	$(MAKE) -f boost/libs/system/CMakeFiles/boost_system.dir/build.make boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.provides.build
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.provides

boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.provides.build: boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.provides.build

# Object files for target boost_system
boost_system_OBJECTS = \
"CMakeFiles/boost_system.dir/src/error_code.cpp.o"

# External object files for target boost_system
boost_system_EXTERNAL_OBJECTS =

boost/libs/system/libboost_system.a: boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o
boost/libs/system/libboost_system.a: boost/libs/system/CMakeFiles/boost_system.dir/build.make
boost/libs/system/libboost_system.a: boost/libs/system/CMakeFiles/boost_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libboost_system.a"
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system && $(CMAKE_COMMAND) -P CMakeFiles/boost_system.dir/cmake_clean_target.cmake
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/boost_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
boost/libs/system/CMakeFiles/boost_system.dir/build: boost/libs/system/libboost_system.a
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/build

boost/libs/system/CMakeFiles/boost_system.dir/requires: boost/libs/system/CMakeFiles/boost_system.dir/src/error_code.cpp.o.requires
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/requires

boost/libs/system/CMakeFiles/boost_system.dir/clean:
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system && $(CMAKE_COMMAND) -P CMakeFiles/boost_system.dir/cmake_clean.cmake
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/clean

boost/libs/system/CMakeFiles/boost_system.dir/depend:
	cd /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath /home/jihan/Workspace/MonkeyLabs/BeagleTerm/firebreath/src/3rdParty/boost/libs/system /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system /home/jihan/Workspace/MonkeyLabs/BeagleTerm/projects/BeagleTermPlugin/build/boost/libs/system/CMakeFiles/boost_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boost/libs/system/CMakeFiles/boost_system.dir/depend

