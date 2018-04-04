# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/kusstas/GTestSortLetter/GTestSortLetters

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kusstas/GTestSortLetter/GTestSortLetters

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/kusstas/GTestSortLetter/GTestSortLetters/CMakeFiles /home/kusstas/GTestSortLetter/GTestSortLetters/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/kusstas/GTestSortLetter/GTestSortLetters/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named sortLetter

# Build rule for target.
sortLetter: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sortLetter
.PHONY : sortLetter

# fast build rule for target.
sortLetter/fast:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/build
.PHONY : sortLetter/fast

Source/main.o: Source/main.cpp.o

.PHONY : Source/main.o

# target to build an object file
Source/main.cpp.o:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/Source/main.cpp.o
.PHONY : Source/main.cpp.o

Source/main.i: Source/main.cpp.i

.PHONY : Source/main.i

# target to preprocess a source file
Source/main.cpp.i:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/Source/main.cpp.i
.PHONY : Source/main.cpp.i

Source/main.s: Source/main.cpp.s

.PHONY : Source/main.s

# target to generate assembly for a file
Source/main.cpp.s:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/Source/main.cpp.s
.PHONY : Source/main.cpp.s

Source/sortLetter/sortLetter.o: Source/sortLetter/sortLetter.cpp.o

.PHONY : Source/sortLetter/sortLetter.o

# target to build an object file
Source/sortLetter/sortLetter.cpp.o:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/Source/sortLetter/sortLetter.cpp.o
.PHONY : Source/sortLetter/sortLetter.cpp.o

Source/sortLetter/sortLetter.i: Source/sortLetter/sortLetter.cpp.i

.PHONY : Source/sortLetter/sortLetter.i

# target to preprocess a source file
Source/sortLetter/sortLetter.cpp.i:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/Source/sortLetter/sortLetter.cpp.i
.PHONY : Source/sortLetter/sortLetter.cpp.i

Source/sortLetter/sortLetter.s: Source/sortLetter/sortLetter.cpp.s

.PHONY : Source/sortLetter/sortLetter.s

# target to generate assembly for a file
Source/sortLetter/sortLetter.cpp.s:
	$(MAKE) -f CMakeFiles/sortLetter.dir/build.make CMakeFiles/sortLetter.dir/Source/sortLetter/sortLetter.cpp.s
.PHONY : Source/sortLetter/sortLetter.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... sortLetter"
	@echo "... Source/main.o"
	@echo "... Source/main.i"
	@echo "... Source/main.s"
	@echo "... Source/sortLetter/sortLetter.o"
	@echo "... Source/sortLetter/sortLetter.i"
	@echo "... Source/sortLetter/sortLetter.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

