# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/k1rh4/GIT/eos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/k1rh4/GIT/eos/build

# Include any dependencies generated for this target.
include contracts/hello/CMakeFiles/eos3dio.tmp.dir/depend.make

# Include the progress variables for this target.
include contracts/hello/CMakeFiles/eos3dio.tmp.dir/progress.make

# Include the compile flags for this target's objects.
include contracts/hello/CMakeFiles/eos3dio.tmp.dir/flags.make

contracts/hello/CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.o: contracts/hello/CMakeFiles/eos3dio.tmp.dir/flags.make
contracts/hello/CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.o: ../contracts/hello/eos3dio.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/k1rh4/GIT/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contracts/hello/CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.o"
	cd /Users/k1rh4/GIT/eos/build/contracts/hello && /usr/local/Cellar/llvm@4/4.0.1/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.o -c /Users/k1rh4/GIT/eos/contracts/hello/eos3dio.cpp

contracts/hello/CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.i"
	cd /Users/k1rh4/GIT/eos/build/contracts/hello && /usr/local/Cellar/llvm@4/4.0.1/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/k1rh4/GIT/eos/contracts/hello/eos3dio.cpp > CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.i

contracts/hello/CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.s"
	cd /Users/k1rh4/GIT/eos/build/contracts/hello && /usr/local/Cellar/llvm@4/4.0.1/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/k1rh4/GIT/eos/contracts/hello/eos3dio.cpp -o CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.s

# Object files for target eos3dio.tmp
eos3dio_tmp_OBJECTS = \
"CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.o"

# External object files for target eos3dio.tmp
eos3dio_tmp_EXTERNAL_OBJECTS =

contracts/hello/eos3dio.tmp: contracts/hello/CMakeFiles/eos3dio.tmp.dir/eos3dio.cpp.o
contracts/hello/eos3dio.tmp: contracts/hello/CMakeFiles/eos3dio.tmp.dir/build.make
contracts/hello/eos3dio.tmp: contracts/hello/CMakeFiles/eos3dio.tmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/k1rh4/GIT/eos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable eos3dio.tmp"
	cd /Users/k1rh4/GIT/eos/build/contracts/hello && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eos3dio.tmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contracts/hello/CMakeFiles/eos3dio.tmp.dir/build: contracts/hello/eos3dio.tmp

.PHONY : contracts/hello/CMakeFiles/eos3dio.tmp.dir/build

contracts/hello/CMakeFiles/eos3dio.tmp.dir/clean:
	cd /Users/k1rh4/GIT/eos/build/contracts/hello && $(CMAKE_COMMAND) -P CMakeFiles/eos3dio.tmp.dir/cmake_clean.cmake
.PHONY : contracts/hello/CMakeFiles/eos3dio.tmp.dir/clean

contracts/hello/CMakeFiles/eos3dio.tmp.dir/depend:
	cd /Users/k1rh4/GIT/eos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/k1rh4/GIT/eos /Users/k1rh4/GIT/eos/contracts/hello /Users/k1rh4/GIT/eos/build /Users/k1rh4/GIT/eos/build/contracts/hello /Users/k1rh4/GIT/eos/build/contracts/hello/CMakeFiles/eos3dio.tmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contracts/hello/CMakeFiles/eos3dio.tmp.dir/depend
