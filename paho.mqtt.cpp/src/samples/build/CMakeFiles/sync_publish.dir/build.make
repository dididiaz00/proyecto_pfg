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
include CMakeFiles/sync_publish.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sync_publish.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sync_publish.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sync_publish.dir/flags.make

CMakeFiles/sync_publish.dir/sync_publish.o: CMakeFiles/sync_publish.dir/flags.make
CMakeFiles/sync_publish.dir/sync_publish.o: ../sync_publish.cpp
CMakeFiles/sync_publish.dir/sync_publish.o: CMakeFiles/sync_publish.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sync_publish.dir/sync_publish.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sync_publish.dir/sync_publish.o -MF CMakeFiles/sync_publish.dir/sync_publish.o.d -o CMakeFiles/sync_publish.dir/sync_publish.o -c /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/sync_publish.cpp

CMakeFiles/sync_publish.dir/sync_publish.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sync_publish.dir/sync_publish.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/sync_publish.cpp > CMakeFiles/sync_publish.dir/sync_publish.i

CMakeFiles/sync_publish.dir/sync_publish.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sync_publish.dir/sync_publish.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/sync_publish.cpp -o CMakeFiles/sync_publish.dir/sync_publish.s

# Object files for target sync_publish
sync_publish_OBJECTS = \
"CMakeFiles/sync_publish.dir/sync_publish.o"

# External object files for target sync_publish
sync_publish_EXTERNAL_OBJECTS =

sync_publish: CMakeFiles/sync_publish.dir/sync_publish.o
sync_publish: CMakeFiles/sync_publish.dir/build.make
sync_publish: CMakeFiles/sync_publish.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sync_publish"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sync_publish.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sync_publish.dir/build: sync_publish
.PHONY : CMakeFiles/sync_publish.dir/build

CMakeFiles/sync_publish.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sync_publish.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sync_publish.dir/clean

CMakeFiles/sync_publish.dir/depend:
	cd /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build /home/dididiaz00/paho/git/paho.mqtt.cpp/src/samples/build/CMakeFiles/sync_publish.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sync_publish.dir/depend

