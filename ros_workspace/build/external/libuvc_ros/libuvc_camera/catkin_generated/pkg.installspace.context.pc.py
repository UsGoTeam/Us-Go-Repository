# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;camera_info_manager;dynamic_reconfigure;image_transport;nodelet;sensor_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-llibuvc_camera_nodelet".split(';') if "-llibuvc_camera_nodelet" != "" else []
PROJECT_NAME = "libuvc_camera"
PROJECT_SPACE_DIR = "/home/leon/Us-Go-Repository/ros_workspace/install"
PROJECT_VERSION = "0.0.11"
