execute_process(COMMAND "/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_ros_tools/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/leon/Us-Go-Repository/ros_workspace/build/iri_core/iri_ros_tools/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
