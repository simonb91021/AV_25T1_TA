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
CMAKE_SOURCE_DIR = /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build

# Include any dependencies generated for this target.
include CMakeFiles/Question-1-out.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Question-1-out.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Question-1-out.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Question-1-out.dir/flags.make

CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o: CMakeFiles/Question-1-out.dir/flags.make
CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o: ../Question-1/Question-1.cc
CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o: CMakeFiles/Question-1-out.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o -MF CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o.d -o CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o -c /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/Question-1/Question-1.cc

CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/Question-1/Question-1.cc > CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.i

CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/Question-1/Question-1.cc -o CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.s

# Object files for target Question-1-out
Question__1__out_OBJECTS = \
"CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o"

# External object files for target Question-1-out
Question__1__out_EXTERNAL_OBJECTS =

Question-1-out: CMakeFiles/Question-1-out.dir/Question-1/Question-1.cc.o
Question-1-out: CMakeFiles/Question-1-out.dir/build.make
Question-1-out: CMakeFiles/Question-1-out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Question-1-out"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Question-1-out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Question-1-out.dir/build: Question-1-out
.PHONY : CMakeFiles/Question-1-out.dir/build

CMakeFiles/Question-1-out.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Question-1-out.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Question-1-out.dir/clean

CMakeFiles/Question-1-out.dir/depend:
	cd /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build /mnt/c/Users/simon/Downloads/AV_25T1_TA/AV_25T1_TA_Brief/build/CMakeFiles/Question-1-out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Question-1-out.dir/depend

