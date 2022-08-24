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
CMAKE_SOURCE_DIR = /home/ali/CppWS/igg_image

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ali/CppWS/igg_image/bin

# Include any dependencies generated for this target.
include src/matplotlib-cpp/CMakeFiles/surface.dir/depend.make

# Include the progress variables for this target.
include src/matplotlib-cpp/CMakeFiles/surface.dir/progress.make

# Include the compile flags for this target's objects.
include src/matplotlib-cpp/CMakeFiles/surface.dir/flags.make

src/matplotlib-cpp/CMakeFiles/surface.dir/examples/surface.cpp.o: src/matplotlib-cpp/CMakeFiles/surface.dir/flags.make
src/matplotlib-cpp/CMakeFiles/surface.dir/examples/surface.cpp.o: ../src/matplotlib-cpp/examples/surface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ali/CppWS/igg_image/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/matplotlib-cpp/CMakeFiles/surface.dir/examples/surface.cpp.o"
	cd /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/surface.dir/examples/surface.cpp.o -c /home/ali/CppWS/igg_image/src/matplotlib-cpp/examples/surface.cpp

src/matplotlib-cpp/CMakeFiles/surface.dir/examples/surface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/surface.dir/examples/surface.cpp.i"
	cd /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ali/CppWS/igg_image/src/matplotlib-cpp/examples/surface.cpp > CMakeFiles/surface.dir/examples/surface.cpp.i

src/matplotlib-cpp/CMakeFiles/surface.dir/examples/surface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/surface.dir/examples/surface.cpp.s"
	cd /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ali/CppWS/igg_image/src/matplotlib-cpp/examples/surface.cpp -o CMakeFiles/surface.dir/examples/surface.cpp.s

# Object files for target surface
surface_OBJECTS = \
"CMakeFiles/surface.dir/examples/surface.cpp.o"

# External object files for target surface
surface_EXTERNAL_OBJECTS =

bin/surface: src/matplotlib-cpp/CMakeFiles/surface.dir/examples/surface.cpp.o
bin/surface: src/matplotlib-cpp/CMakeFiles/surface.dir/build.make
bin/surface: /usr/lib/x86_64-linux-gnu/libpython3.8.so
bin/surface: src/matplotlib-cpp/CMakeFiles/surface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ali/CppWS/igg_image/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/surface"
	cd /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/surface.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/matplotlib-cpp/CMakeFiles/surface.dir/build: bin/surface

.PHONY : src/matplotlib-cpp/CMakeFiles/surface.dir/build

src/matplotlib-cpp/CMakeFiles/surface.dir/clean:
	cd /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp && $(CMAKE_COMMAND) -P CMakeFiles/surface.dir/cmake_clean.cmake
.PHONY : src/matplotlib-cpp/CMakeFiles/surface.dir/clean

src/matplotlib-cpp/CMakeFiles/surface.dir/depend:
	cd /home/ali/CppWS/igg_image/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ali/CppWS/igg_image /home/ali/CppWS/igg_image/src/matplotlib-cpp /home/ali/CppWS/igg_image/bin /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp /home/ali/CppWS/igg_image/bin/src/matplotlib-cpp/CMakeFiles/surface.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/matplotlib-cpp/CMakeFiles/surface.dir/depend
