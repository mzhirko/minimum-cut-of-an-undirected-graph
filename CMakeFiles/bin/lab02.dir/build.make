# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02

# Include any dependencies generated for this target.
include CMakeFiles/bin/lab02.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bin/lab02.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bin/lab02.dir/flags.make

CMakeFiles/bin/lab02.dir/src/main.cpp.o: CMakeFiles/bin/lab02.dir/flags.make
CMakeFiles/bin/lab02.dir/src/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bin/lab02.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bin/lab02.dir/src/main.cpp.o -c /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02/src/main.cpp

CMakeFiles/bin/lab02.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bin/lab02.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02/src/main.cpp > CMakeFiles/bin/lab02.dir/src/main.cpp.i

CMakeFiles/bin/lab02.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bin/lab02.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02/src/main.cpp -o CMakeFiles/bin/lab02.dir/src/main.cpp.s

CMakeFiles/bin/lab02.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/bin/lab02.dir/src/main.cpp.o.requires

CMakeFiles/bin/lab02.dir/src/main.cpp.o.provides: CMakeFiles/bin/lab02.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/bin/lab02.dir/build.make CMakeFiles/bin/lab02.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/bin/lab02.dir/src/main.cpp.o.provides

CMakeFiles/bin/lab02.dir/src/main.cpp.o.provides.build: CMakeFiles/bin/lab02.dir/src/main.cpp.o


# Object files for target bin/lab02
bin/lab02_OBJECTS = \
"CMakeFiles/bin/lab02.dir/src/main.cpp.o"

# External object files for target bin/lab02
bin/lab02_EXTERNAL_OBJECTS =

bin/lab02: CMakeFiles/bin/lab02.dir/src/main.cpp.o
bin/lab02: CMakeFiles/bin/lab02.dir/build.make
bin/lab02: CMakeFiles/bin/lab02.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/lab02"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bin/lab02.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bin/lab02.dir/build: bin/lab02

.PHONY : CMakeFiles/bin/lab02.dir/build

CMakeFiles/bin/lab02.dir/requires: CMakeFiles/bin/lab02.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/bin/lab02.dir/requires

CMakeFiles/bin/lab02.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bin/lab02.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bin/lab02.dir/clean

CMakeFiles/bin/lab02.dir/depend:
	cd /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02 /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02 /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02 /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02 /home/maria/projects/TIIT/2nd-term/min-cut/ai-master/semester-2/oaip/lab02/CMakeFiles/bin/lab02.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bin/lab02.dir/depend

