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
CMAKE_SOURCE_DIR = /home/ymx/quartz

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ymx/quartz/build

# Include any dependencies generated for this target.
include bench/memlat/CMakeFiles/memlat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include bench/memlat/CMakeFiles/memlat.dir/compiler_depend.make

# Include the progress variables for this target.
include bench/memlat/CMakeFiles/memlat.dir/progress.make

# Include the compile flags for this target's objects.
include bench/memlat/CMakeFiles/memlat.dir/flags.make

bench/memlat/CMakeFiles/memlat.dir/memlat.c.o: bench/memlat/CMakeFiles/memlat.dir/flags.make
bench/memlat/CMakeFiles/memlat.dir/memlat.c.o: ../bench/memlat/memlat.c
bench/memlat/CMakeFiles/memlat.dir/memlat.c.o: bench/memlat/CMakeFiles/memlat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ymx/quartz/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object bench/memlat/CMakeFiles/memlat.dir/memlat.c.o"
	cd /home/ymx/quartz/build/bench/memlat && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT bench/memlat/CMakeFiles/memlat.dir/memlat.c.o -MF CMakeFiles/memlat.dir/memlat.c.o.d -o CMakeFiles/memlat.dir/memlat.c.o -c /home/ymx/quartz/bench/memlat/memlat.c

bench/memlat/CMakeFiles/memlat.dir/memlat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/memlat.dir/memlat.c.i"
	cd /home/ymx/quartz/build/bench/memlat && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ymx/quartz/bench/memlat/memlat.c > CMakeFiles/memlat.dir/memlat.c.i

bench/memlat/CMakeFiles/memlat.dir/memlat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/memlat.dir/memlat.c.s"
	cd /home/ymx/quartz/build/bench/memlat && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ymx/quartz/bench/memlat/memlat.c -o CMakeFiles/memlat.dir/memlat.c.s

# Object files for target memlat
memlat_OBJECTS = \
"CMakeFiles/memlat.dir/memlat.c.o"

# External object files for target memlat
memlat_EXTERNAL_OBJECTS =

bench/memlat/memlat: bench/memlat/CMakeFiles/memlat.dir/memlat.c.o
bench/memlat/memlat: bench/memlat/CMakeFiles/memlat.dir/build.make
bench/memlat/memlat: src/lib/libnvmemul.so
bench/memlat/memlat: bench/memlat/CMakeFiles/memlat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ymx/quartz/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable memlat"
	cd /home/ymx/quartz/build/bench/memlat && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/memlat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bench/memlat/CMakeFiles/memlat.dir/build: bench/memlat/memlat
.PHONY : bench/memlat/CMakeFiles/memlat.dir/build

bench/memlat/CMakeFiles/memlat.dir/clean:
	cd /home/ymx/quartz/build/bench/memlat && $(CMAKE_COMMAND) -P CMakeFiles/memlat.dir/cmake_clean.cmake
.PHONY : bench/memlat/CMakeFiles/memlat.dir/clean

bench/memlat/CMakeFiles/memlat.dir/depend:
	cd /home/ymx/quartz/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ymx/quartz /home/ymx/quartz/bench/memlat /home/ymx/quartz/build /home/ymx/quartz/build/bench/memlat /home/ymx/quartz/build/bench/memlat/CMakeFiles/memlat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bench/memlat/CMakeFiles/memlat.dir/depend

