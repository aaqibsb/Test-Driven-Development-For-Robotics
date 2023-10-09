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
CMAKE_SOURCE_DIR = /home/sas/Week4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sas/Week4/build

# Utility rule file for test_coverage.

# Include any custom commands dependencies for this target.
include CMakeFiles/test_coverage.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_coverage.dir/progress.make

CMakeFiles/test_coverage:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sas/Week4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Resetting code coverage counters to zero."
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Processing code coverage counters and generating report."
	/usr/bin/lcov --gcov-tool /usr/bin/gcov -directory . -b /home/sas/Week4 --zerocounters
	/usr/bin/lcov --gcov-tool /usr/bin/gcov -c -i -d . -b /home/sas/Week4 -o test_coverage.base
	ctest
	/usr/bin/lcov --gcov-tool /usr/bin/gcov --directory . -b /home/sas/Week4 --capture --output-file test_coverage.capture
	/usr/bin/lcov --gcov-tool /usr/bin/gcov -a test_coverage.base -a test_coverage.capture --output-file test_coverage.total
	/usr/bin/lcov --gcov-tool /usr/bin/gcov --remove test_coverage.total /home/sas/Week4/app/main.cpp "/home/sas/Week4/*gtest*" "/usr/include/*" /home/sas/Week4/build --output-file test_coverage.info
	/usr/bin/genhtml --demangle-cpp -o test_coverage test_coverage.info

test_coverage: CMakeFiles/test_coverage
test_coverage: CMakeFiles/test_coverage.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Lcov code coverage info report saved in test_coverage.info."
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "To view the coverage report, open: "
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold " /home/sas/Week4/build/test_coverage/index.html"
.PHONY : test_coverage

# Rule to build all files generated by this target.
CMakeFiles/test_coverage.dir/build: test_coverage
.PHONY : CMakeFiles/test_coverage.dir/build

CMakeFiles/test_coverage.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_coverage.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_coverage.dir/clean

CMakeFiles/test_coverage.dir/depend:
	cd /home/sas/Week4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sas/Week4 /home/sas/Week4 /home/sas/Week4/build /home/sas/Week4/build /home/sas/Week4/build/CMakeFiles/test_coverage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_coverage.dir/depend

