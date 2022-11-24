# Install script for directory: /home/leon/Us-Go-Repository/ros_workspace/src/sensors/imu/iri_imu_msg_fix

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/iri_imu_msg_fix" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/include/iri_imu_msg_fix/ImuMsgFixConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/iri_imu_msg_fix" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/lib/python2.7/dist-packages/iri_imu_msg_fix/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/leon/Us-Go-Repository/ros_workspace/devel/lib/python2.7/dist-packages/iri_imu_msg_fix/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/iri_imu_msg_fix" TYPE DIRECTORY FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/lib/python2.7/dist-packages/iri_imu_msg_fix/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/build/sensors/imu/iri_imu_msg_fix/catkin_generated/installspace/iri_imu_msg_fix.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_imu_msg_fix/cmake" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/build/sensors/imu/iri_imu_msg_fix/catkin_generated/installspace/iri_imu_msg_fixConfig.cmake"
    "/home/leon/Us-Go-Repository/ros_workspace/build/sensors/imu/iri_imu_msg_fix/catkin_generated/installspace/iri_imu_msg_fixConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_imu_msg_fix" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/src/sensors/imu/iri_imu_msg_fix/package.xml")
endif()

