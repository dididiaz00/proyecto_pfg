# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build

# Include any dependencies generated for this target.
include CMakeFiles/pub_speed_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pub_speed_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pub_speed_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pub_speed_test.dir/flags.make

CMakeFiles/pub_speed_test.dir/pub_speed_test.o: CMakeFiles/pub_speed_test.dir/flags.make
CMakeFiles/pub_speed_test.dir/pub_speed_test.o: ../pub_speed_test.cpp
CMakeFiles/pub_speed_test.dir/pub_speed_test.o: CMakeFiles/pub_speed_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pub_speed_test.dir/pub_speed_test.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pub_speed_test.dir/pub_speed_test.o -MF CMakeFiles/pub_speed_test.dir/pub_speed_test.o.d -o CMakeFiles/pub_speed_test.dir/pub_speed_test.o -c /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/pub_speed_test.cpp

CMakeFiles/pub_speed_test.dir/pub_speed_test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pub_speed_test.dir/pub_speed_test.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/pub_speed_test.cpp > CMakeFiles/pub_speed_test.dir/pub_speed_test.i

CMakeFiles/pub_speed_test.dir/pub_speed_test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pub_speed_test.dir/pub_speed_test.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/pub_speed_test.cpp -o CMakeFiles/pub_speed_test.dir/pub_speed_test.s

# Object files for target pub_speed_test
pub_speed_test_OBJECTS = \
"CMakeFiles/pub_speed_test.dir/pub_speed_test.o"

# External object files for target pub_speed_test
pub_speed_test_EXTERNAL_OBJECTS =

pub_speed_test: CMakeFiles/pub_speed_test.dir/pub_speed_test.o
pub_speed_test: CMakeFiles/pub_speed_test.dir/build.make
pub_speed_test: CMakeFiles/pub_speed_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pub_speed_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pub_speed_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pub_speed_test.dir/build: pub_speed_test
.PHONY : CMakeFiles/pub_speed_test.dir/build

CMakeFiles/pub_speed_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pub_speed_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pub_speed_test.dir/clean

CMakeFiles/pub_speed_test.dir/depend:
	cd /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build/CMakeFiles/pub_speed_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pub_speed_test.dir/depend

