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
CMAKE_SOURCE_DIR = /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/starfish/Public/毕业论文/test/OLLVM++-demo/Build

# Include any dependencies generated for this target.
include CMakeFiles/LLVMObfuscator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LLVMObfuscator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LLVMObfuscator.dir/flags.make

CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.o: CMakeFiles/LLVMObfuscator.dir/flags.make
CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.o: /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/HelloWorld.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starfish/Public/毕业论文/test/OLLVM++-demo/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.o -c /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/HelloWorld.cpp

CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/HelloWorld.cpp > CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.i

CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/HelloWorld.cpp -o CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.s

CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.o: CMakeFiles/LLVMObfuscator.dir/flags.make
CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.o: /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/SplitBasicBlock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starfish/Public/毕业论文/test/OLLVM++-demo/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.o -c /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/SplitBasicBlock.cpp

CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/SplitBasicBlock.cpp > CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.i

CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/SplitBasicBlock.cpp -o CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.s

CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.o: CMakeFiles/LLVMObfuscator.dir/flags.make
CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.o: /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starfish/Public/毕业论文/test/OLLVM++-demo/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.o -c /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Utils.cpp

CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Utils.cpp > CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.i

CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Utils.cpp -o CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.s

CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.o: CMakeFiles/LLVMObfuscator.dir/flags.make
CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.o: /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Flattering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/starfish/Public/毕业论文/test/OLLVM++-demo/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.o -c /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Flattering.cpp

CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Flattering.cpp > CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.i

CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms/src/Flattering.cpp -o CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.s

# Object files for target LLVMObfuscator
LLVMObfuscator_OBJECTS = \
"CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.o" \
"CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.o" \
"CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.o" \
"CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.o"

# External object files for target LLVMObfuscator
LLVMObfuscator_EXTERNAL_OBJECTS =

LLVMObfuscator.so: CMakeFiles/LLVMObfuscator.dir/src/HelloWorld.cpp.o
LLVMObfuscator.so: CMakeFiles/LLVMObfuscator.dir/src/SplitBasicBlock.cpp.o
LLVMObfuscator.so: CMakeFiles/LLVMObfuscator.dir/src/Utils.cpp.o
LLVMObfuscator.so: CMakeFiles/LLVMObfuscator.dir/src/Flattering.cpp.o
LLVMObfuscator.so: CMakeFiles/LLVMObfuscator.dir/build.make
LLVMObfuscator.so: CMakeFiles/LLVMObfuscator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/starfish/Public/毕业论文/test/OLLVM++-demo/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared module LLVMObfuscator.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMObfuscator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LLVMObfuscator.dir/build: LLVMObfuscator.so

.PHONY : CMakeFiles/LLVMObfuscator.dir/build

CMakeFiles/LLVMObfuscator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LLVMObfuscator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LLVMObfuscator.dir/clean

CMakeFiles/LLVMObfuscator.dir/depend:
	cd /home/starfish/Public/毕业论文/test/OLLVM++-demo/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms /home/starfish/Public/毕业论文/test/OLLVM++-demo/Transforms /home/starfish/Public/毕业论文/test/OLLVM++-demo/Build /home/starfish/Public/毕业论文/test/OLLVM++-demo/Build /home/starfish/Public/毕业论文/test/OLLVM++-demo/Build/CMakeFiles/LLVMObfuscator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LLVMObfuscator.dir/depend

