# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug

# Include any dependencies generated for this target.
include Fft/CMakeFiles/Fft.dir/depend.make

# Include the progress variables for this target.
include Fft/CMakeFiles/Fft.dir/progress.make

# Include the compile flags for this target's objects.
include Fft/CMakeFiles/Fft.dir/flags.make

Fft/CMakeFiles/Fft.dir/Fft.cpp.o: Fft/CMakeFiles/Fft.dir/flags.make
Fft/CMakeFiles/Fft.dir/Fft.cpp.o: ../src/Fft/Fft.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Fft/CMakeFiles/Fft.dir/Fft.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Fft.dir/Fft.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Fft/Fft.cpp

Fft/CMakeFiles/Fft.dir/Fft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Fft.dir/Fft.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Fft/Fft.cpp > CMakeFiles/Fft.dir/Fft.cpp.i

Fft/CMakeFiles/Fft.dir/Fft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Fft.dir/Fft.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Fft/Fft.cpp -o CMakeFiles/Fft.dir/Fft.cpp.s

Fft/CMakeFiles/Fft.dir/Fft.cpp.o.requires:

.PHONY : Fft/CMakeFiles/Fft.dir/Fft.cpp.o.requires

Fft/CMakeFiles/Fft.dir/Fft.cpp.o.provides: Fft/CMakeFiles/Fft.dir/Fft.cpp.o.requires
	$(MAKE) -f Fft/CMakeFiles/Fft.dir/build.make Fft/CMakeFiles/Fft.dir/Fft.cpp.o.provides.build
.PHONY : Fft/CMakeFiles/Fft.dir/Fft.cpp.o.provides

Fft/CMakeFiles/Fft.dir/Fft.cpp.o.provides.build: Fft/CMakeFiles/Fft.dir/Fft.cpp.o


Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o: Fft/CMakeFiles/Fft.dir/flags.make
Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o: ../3rdParty/Fft/rvfft.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/3rdParty/Fft/rvfft.cpp

Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/3rdParty/Fft/rvfft.cpp > CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.i

Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/3rdParty/Fft/rvfft.cpp -o CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.s

Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.requires:

.PHONY : Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.requires

Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.provides: Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.requires
	$(MAKE) -f Fft/CMakeFiles/Fft.dir/build.make Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.provides.build
.PHONY : Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.provides

Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.provides.build: Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o


# Object files for target Fft
Fft_OBJECTS = \
"CMakeFiles/Fft.dir/Fft.cpp.o" \
"CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o"

# External object files for target Fft
Fft_EXTERNAL_OBJECTS =

../lib/debug/libFft.a: Fft/CMakeFiles/Fft.dir/Fft.cpp.o
../lib/debug/libFft.a: Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o
../lib/debug/libFft.a: Fft/CMakeFiles/Fft.dir/build.make
../lib/debug/libFft.a: Fft/CMakeFiles/Fft.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../lib/debug/libFft.a"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && $(CMAKE_COMMAND) -P CMakeFiles/Fft.dir/cmake_clean_target.cmake
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Fft.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Fft/CMakeFiles/Fft.dir/build: ../lib/debug/libFft.a

.PHONY : Fft/CMakeFiles/Fft.dir/build

Fft/CMakeFiles/Fft.dir/requires: Fft/CMakeFiles/Fft.dir/Fft.cpp.o.requires
Fft/CMakeFiles/Fft.dir/requires: Fft/CMakeFiles/Fft.dir/__/__/3rdParty/Fft/rvfft.cpp.o.requires

.PHONY : Fft/CMakeFiles/Fft.dir/requires

Fft/CMakeFiles/Fft.dir/clean:
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft && $(CMAKE_COMMAND) -P CMakeFiles/Fft.dir/cmake_clean.cmake
.PHONY : Fft/CMakeFiles/Fft.dir/clean

Fft/CMakeFiles/Fft.dir/depend:
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5 /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Fft /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/Fft/CMakeFiles/Fft.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Fft/CMakeFiles/Fft.dir/depend
