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
include TestExec/CMakeFiles/TestExec.dir/depend.make

# Include the progress variables for this target.
include TestExec/CMakeFiles/TestExec.dir/progress.make

# Include the compile flags for this target's objects.
include TestExec/CMakeFiles/TestExec.dir/flags.make

TestExec/CMakeFiles/TestExec.dir/Test.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/Test.cpp.o: ../src/Tests/TestExec/Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object TestExec/CMakeFiles/TestExec.dir/Test.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/Test.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/TestExec/Test.cpp

TestExec/CMakeFiles/TestExec.dir/Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/Test.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/TestExec/Test.cpp > CMakeFiles/TestExec.dir/Test.cpp.i

TestExec/CMakeFiles/TestExec.dir/Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/Test.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/TestExec/Test.cpp -o CMakeFiles/TestExec.dir/Test.cpp.s

TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/Test.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o: ../src/Tests/Tests/Test_AudioIO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_AudioIO.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_AudioIO.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_AudioIO.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o: ../src/Tests/Tests/Test_CombFilter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_CombFilter.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_CombFilter.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_CombFilter.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o: ../src/Tests/Tests/Test_Dtw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Dtw.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Dtw.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Dtw.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o: ../src/Tests/Tests/Test_Fft.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Fft.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Fft.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Fft.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o: ../src/Tests/Tests/Test_Ppm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Ppm.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Ppm.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Ppm.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o: ../src/Tests/Tests/Test_RingBuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_RingBuffer.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_RingBuffer.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_RingBuffer.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o


TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o: TestExec/CMakeFiles/TestExec.dir/flags.make
TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o: ../src/Tests/Tests/Test_Vibrato.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o -c /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Vibrato.cpp

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.i"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Vibrato.cpp > CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.i

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.s"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/Tests/Test_Vibrato.cpp -o CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.s

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.requires:

.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.requires

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.provides: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.requires
	$(MAKE) -f TestExec/CMakeFiles/TestExec.dir/build.make TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.provides.build
.PHONY : TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.provides

TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.provides.build: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o


# Object files for target TestExec
TestExec_OBJECTS = \
"CMakeFiles/TestExec.dir/Test.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o" \
"CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o"

# External object files for target TestExec
TestExec_EXTERNAL_OBJECTS =

../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/Test.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/build.make
../bin/debug/TestExec: ../lib/debug/libUnitTest++.a
../bin/debug/TestExec: ../lib/debug/libFft.a
../bin/debug/TestExec: ../lib/debug/libCombFilter.a
../bin/debug/TestExec: ../lib/debug/libDtw.a
../bin/debug/TestExec: ../lib/debug/libVibrato.a
../bin/debug/TestExec: ../lib/debug/libPpm.a
../bin/debug/TestExec: ../lib/debug/libAudioFileIO.a
../bin/debug/TestExec: ../lib/debug/libsndlib.a
../bin/debug/TestExec: TestExec/CMakeFiles/TestExec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable ../../bin/debug/TestExec"
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestExec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
TestExec/CMakeFiles/TestExec.dir/build: ../bin/debug/TestExec

.PHONY : TestExec/CMakeFiles/TestExec.dir/build

TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/Test.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_AudioIO.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_CombFilter.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Dtw.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Fft.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Ppm.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_RingBuffer.cpp.o.requires
TestExec/CMakeFiles/TestExec.dir/requires: TestExec/CMakeFiles/TestExec.dir/__/Tests/Test_Vibrato.cpp.o.requires

.PHONY : TestExec/CMakeFiles/TestExec.dir/requires

TestExec/CMakeFiles/TestExec.dir/clean:
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec && $(CMAKE_COMMAND) -P CMakeFiles/TestExec.dir/cmake_clean.cmake
.PHONY : TestExec/CMakeFiles/TestExec.dir/clean

TestExec/CMakeFiles/TestExec.dir/depend:
	cd /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5 /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/TestExec /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug/TestExec/CMakeFiles/TestExec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : TestExec/CMakeFiles/TestExec.dir/depend
