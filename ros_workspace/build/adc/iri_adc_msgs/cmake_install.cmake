# Install script for directory: /home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/msg" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/msg/adc_goal.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/msg/adc_goal_array.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/msg/feature.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/msg/feature_array.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/msg/adc_opendrive_nodes.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/srv" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/get_opendrive_map.srv"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/get_opendrive_nodes.srv"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/set_semaphore.srv"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/set_car_lights.srv"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/set_string.srv"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/set_goals.srv"
    "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/srv/jury_mode.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/action" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/action/adc_jury.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/msg" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryAction.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryActionGoal.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryActionResult.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryActionFeedback.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryGoal.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryResult.msg"
    "/home/leon/Us-Go-Repository/ros_workspace/devel/share/iri_adc_msgs/msg/adc_juryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/cmake" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/build/adc/iri_adc_msgs/catkin_generated/installspace/iri_adc_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/include/iri_adc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/share/roseus/ros/iri_adc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/share/common-lisp/ros/iri_adc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/share/gennodejs/ros/iri_adc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/leon/Us-Go-Repository/ros_workspace/devel/lib/python2.7/dist-packages/iri_adc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/leon/Us-Go-Repository/ros_workspace/devel/lib/python2.7/dist-packages/iri_adc_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/build/adc/iri_adc_msgs/catkin_generated/installspace/iri_adc_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/cmake" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/build/adc/iri_adc_msgs/catkin_generated/installspace/iri_adc_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs/cmake" TYPE FILE FILES
    "/home/leon/Us-Go-Repository/ros_workspace/build/adc/iri_adc_msgs/catkin_generated/installspace/iri_adc_msgsConfig.cmake"
    "/home/leon/Us-Go-Repository/ros_workspace/build/adc/iri_adc_msgs/catkin_generated/installspace/iri_adc_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/iri_adc_msgs" TYPE FILE FILES "/home/leon/Us-Go-Repository/ros_workspace/src/adc/iri_adc_msgs/package.xml")
endif()

