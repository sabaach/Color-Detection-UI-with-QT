# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sabach/cek/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sabach/cek/build

# Utility rule file for opencamera_genlisp.

# Include the progress variables for this target.
include opencamera/CMakeFiles/opencamera_genlisp.dir/progress.make

opencamera_genlisp: opencamera/CMakeFiles/opencamera_genlisp.dir/build.make

.PHONY : opencamera_genlisp

# Rule to build all files generated by this target.
opencamera/CMakeFiles/opencamera_genlisp.dir/build: opencamera_genlisp

.PHONY : opencamera/CMakeFiles/opencamera_genlisp.dir/build

opencamera/CMakeFiles/opencamera_genlisp.dir/clean:
	cd /home/sabach/cek/build/opencamera && $(CMAKE_COMMAND) -P CMakeFiles/opencamera_genlisp.dir/cmake_clean.cmake
.PHONY : opencamera/CMakeFiles/opencamera_genlisp.dir/clean

opencamera/CMakeFiles/opencamera_genlisp.dir/depend:
	cd /home/sabach/cek/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sabach/cek/src /home/sabach/cek/src/opencamera /home/sabach/cek/build /home/sabach/cek/build/opencamera /home/sabach/cek/build/opencamera/CMakeFiles/opencamera_genlisp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : opencamera/CMakeFiles/opencamera_genlisp.dir/depend
