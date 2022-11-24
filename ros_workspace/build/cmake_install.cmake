# Install script for directory: /home/leon/Us-Go-Repository/ros_workspace/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/leon/Us-Go-Repository/ros_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/leon/Us-Go-Repository/ros_workspace/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/leon/Us-Go-Repository/ros_workspace/install" TYPE PROGRAM FILES "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/leon/Us-Go-Repository/ros_workspace/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/leon/Us-Go-Repository/ros_workspace/install" TYPE PROGRAM FILES "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/leon/Us-Go-Repository/ros_workspace/install/setup.bash;/home/leon/Us-Go-Repository/ros_workspace/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/leon/Us-Go-Repository/ros_workspace/install" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/setup.bash"
    "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/leon/Us-Go-Repository/ros_workspace/install/setup.sh;/home/leon/Us-Go-Repository/ros_workspace/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/leon/Us-Go-Repository/ros_workspace/install" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/setup.sh"
    "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/leon/Us-Go-Repository/ros_workspace/install/setup.zsh;/home/leon/Us-Go-Repository/ros_workspace/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/leon/Us-Go-Repository/ros_workspace/install" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/setup.zsh"
    "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/leon/Us-Go-Repository/ros_workspace/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/leon/Us-Go-Repository/ros_workspace/install" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/leon/Us-Go-Repository/ros_workspace/build/gtest/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/mono_cameras/iri_camera_gazebo/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/ranger1d/iri_hcsr04_sonar_description/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/ranger2d/iri_laser2d_gazebo/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_description/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/simulator/iri_model_car_gazebo/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_how_to/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_launch/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_rosnav/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/imu/iri_mpu9250_imu_description/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/navigation/iri_rosnav/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/navigation/iri_teleop_launch/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/mono_cameras/iri_uvc_camera_description/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_ros/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_behaviortree/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_ros_tools/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_action_server/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_base_algorithm/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_base_bt_client/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_base_driver/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_control/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/imu/iri_imu_msg_fix/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_msgs/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/external/libuvc_ros/libuvc_camera/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/tools/iri_dynamic_transform_publisher/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/imu/iri_imu_gazebo/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/iri_model_car_odometry/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/ranger1d/iri_ranger1d_gazebo/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/sensors/ranger2d/iri_rplidar_laser2d_description/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/navigation/iri_ackermann_local_planner/cmake_install.cmake")
  include("/home/leon/Us-Go-Repository/ros_workspace/build/platforms/model_car/simulator/iri_model_car_controller/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/leon/Us-Go-Repository/ros_workspace/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")