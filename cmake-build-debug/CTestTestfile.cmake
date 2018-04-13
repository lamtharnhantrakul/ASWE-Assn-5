# CMake generated Testfile for 
# Source directory: /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5
# Build directory: /Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/cmake-build-debug
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(RingBuff "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/bin/TestExec" "RingBuff")
add_test(Fft "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/bin/TestExec" "Fft")
add_test(AudioIo "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/bin/TestExec" "AudioIo" "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/src/Tests/TestData/")
add_test(CombFilter "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/bin/TestExec" "CombFilter")
add_test(Dtw "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/bin/TestExec" "Dtw")
add_test(Vibrato "/Users/lamtharnhantrakul/code/GTCMT/MUSI6106-assignments/ASWE-Assn-5/bin/TestExec" "Ppm")
subdirs("MUSI6106Exec")
subdirs("AudioFileIO")
subdirs("CombFilter")
subdirs("Fft")
subdirs("Dtw")
subdirs("Vibrato")
subdirs("Ppm")
subdirs("TestExec")
