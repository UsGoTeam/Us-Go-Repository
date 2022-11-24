# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;urdf;controller_interface;hardware_interface;control_toolbox;controller_manager;xacro;ackermann_msgs;iri_model_car_msgs;tf;gazebo_ros_control;joint_state_controller".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-liri_model_car_controller".split(';') if "-liri_model_car_controller" != "" else []
PROJECT_NAME = "iri_model_car_controller"
PROJECT_SPACE_DIR = "/home/leon/Us-Go-Repository/ros_workspace/install"
PROJECT_VERSION = "0.0.0"
