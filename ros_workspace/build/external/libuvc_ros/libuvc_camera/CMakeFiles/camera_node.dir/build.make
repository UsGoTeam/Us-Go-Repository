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
CMAKE_SOURCE_DIR = /home/leon/Us-Go-Repository/ros_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leon/Us-Go-Repository/ros_workspace/build

# Include any dependencies generated for this target.
include external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/depend.make

# Include the progress variables for this target.
include external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/progress.make

# Include the compile flags for this target's objects.
include external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/flags.make

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/flags.make
external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o: /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leon/Us-Go-Repository/ros_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_node.dir/src/main.cpp.o -c /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/main.cpp

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_node.dir/src/main.cpp.i"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/main.cpp > CMakeFiles/camera_node.dir/src/main.cpp.i

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_node.dir/src/main.cpp.s"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/main.cpp -o CMakeFiles/camera_node.dir/src/main.cpp.s

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.requires:

.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.requires

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.provides: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.requires
	$(MAKE) -f external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/build.make external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.provides.build
.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.provides

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.provides.build: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o


external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/flags.make
external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o: /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/camera_driver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leon/Us-Go-Repository/ros_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_node.dir/src/camera_driver.cpp.o -c /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/camera_driver.cpp

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_node.dir/src/camera_driver.cpp.i"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/camera_driver.cpp > CMakeFiles/camera_node.dir/src/camera_driver.cpp.i

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_node.dir/src/camera_driver.cpp.s"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera/src/camera_driver.cpp -o CMakeFiles/camera_node.dir/src/camera_driver.cpp.s

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires:

.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires
	$(MAKE) -f external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/build.make external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides.build
.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.provides.build: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o


# Object files for target camera_node
camera_node_OBJECTS = \
"CMakeFiles/camera_node.dir/src/main.cpp.o" \
"CMakeFiles/camera_node.dir/src/camera_driver.cpp.o"

# External object files for target camera_node
camera_node_EXTERNAL_OBJECTS =

/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/build.make
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/x86_64-linux-gnu/libuvc.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libcamera_info_manager.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libcamera_calibration_parsers.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libimage_transport.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libnodeletlib.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libbondcpp.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libclass_loader.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/libPocoFoundation.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libroslib.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librospack.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libroscpp.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librosconsole.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librostime.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libcpp_common.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libcamera_info_manager.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libcamera_calibration_parsers.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libimage_transport.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libmessage_filters.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libnodeletlib.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libbondcpp.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libuuid.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libclass_loader.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/libPocoFoundation.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libroslib.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librospack.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libroscpp.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librosconsole.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/librostime.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /opt/ros/melodic/lib/libcpp_common.so
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leon/Us-Go-Repository/ros_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node"
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/build: /home/leon/Us-Go-Repository/ros_workspace/devel/lib/libuvc_camera/camera_node

.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/build

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/requires: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/main.cpp.o.requires
external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/requires: external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/src/camera_driver.cpp.o.requires

.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/requires

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/clean:
	cd /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera && $(CMAKE_COMMAND) -P CMakeFiles/camera_node.dir/cmake_clean.cmake
.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/clean

external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/depend:
	cd /home/leon/Us-Go-Repository/ros_workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Us-Go-Repository/ros_workspace/src /home/leon/Us-Go-Repository/ros_workspace/src/external/libuvc_ros/libuvc_camera /home/leon/Us-Go-Repository/ros_workspace/build /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera /home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/libuvc_ros/libuvc_camera/CMakeFiles/camera_node.dir/depend

