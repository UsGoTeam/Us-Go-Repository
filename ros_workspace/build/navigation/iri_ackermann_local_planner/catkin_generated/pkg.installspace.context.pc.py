# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "std_msgs;nav_msgs;ackermann_msgs;visualization_msgs;geometry_msgs;nav_core;pluginlib;tf;costmap_2d;voxel_grid;angles;base_local_planner".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-liri_ackermann_local_planner".split(';') if "-liri_ackermann_local_planner" != "" else []
PROJECT_NAME = "iri_ackermann_local_planner"
PROJECT_SPACE_DIR = "/home/leon/Us-Go-Repository/ros_workspace/install"
PROJECT_VERSION = "1.0.0"
