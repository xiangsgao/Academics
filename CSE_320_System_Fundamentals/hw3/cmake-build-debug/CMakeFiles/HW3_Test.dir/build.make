# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/xgao/bin/clion-2019.2.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/xgao/bin/clion-2019.2.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xgao/Documents/Clion_Projects/xiangsgao/hw3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HW3_Test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HW3_Test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HW3_Test.dir/flags.make

CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.o: CMakeFiles/HW3_Test.dir/flags.make
CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.o: ../tests/sfmm_tests.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.o   -c /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/tests/sfmm_tests.c

CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/tests/sfmm_tests.c > CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.i

CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/tests/sfmm_tests.c -o CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.s

CMakeFiles/HW3_Test.dir/src/sfmm.c.o: CMakeFiles/HW3_Test.dir/flags.make
CMakeFiles/HW3_Test.dir/src/sfmm.c.o: ../src/sfmm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/HW3_Test.dir/src/sfmm.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/HW3_Test.dir/src/sfmm.c.o   -c /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/src/sfmm.c

CMakeFiles/HW3_Test.dir/src/sfmm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/HW3_Test.dir/src/sfmm.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/src/sfmm.c > CMakeFiles/HW3_Test.dir/src/sfmm.c.i

CMakeFiles/HW3_Test.dir/src/sfmm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/HW3_Test.dir/src/sfmm.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/src/sfmm.c -o CMakeFiles/HW3_Test.dir/src/sfmm.c.s

# Object files for target HW3_Test
HW3_Test_OBJECTS = \
"CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.o" \
"CMakeFiles/HW3_Test.dir/src/sfmm.c.o"

# External object files for target HW3_Test
HW3_Test_EXTERNAL_OBJECTS = \
"/home/xgao/Documents/Clion_Projects/xiangsgao/hw3/lib/sfutil.o"

HW3_Test: CMakeFiles/HW3_Test.dir/tests/sfmm_tests.c.o
HW3_Test: CMakeFiles/HW3_Test.dir/src/sfmm.c.o
HW3_Test: ../lib/sfutil.o
HW3_Test: CMakeFiles/HW3_Test.dir/build.make
HW3_Test: /usr/lib/libcriterion.so
HW3_Test: CMakeFiles/HW3_Test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable HW3_Test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HW3_Test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HW3_Test.dir/build: HW3_Test

.PHONY : CMakeFiles/HW3_Test.dir/build

CMakeFiles/HW3_Test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HW3_Test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HW3_Test.dir/clean

CMakeFiles/HW3_Test.dir/depend:
	cd /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xgao/Documents/Clion_Projects/xiangsgao/hw3 /home/xgao/Documents/Clion_Projects/xiangsgao/hw3 /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug /home/xgao/Documents/Clion_Projects/xiangsgao/hw3/cmake-build-debug/CMakeFiles/HW3_Test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HW3_Test.dir/depend

