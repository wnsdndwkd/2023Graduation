cmake_minimum_required(VERSION 3.0.2)

project(kukirun_msgs)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  message_generation
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
)

add_message_files(
  FILES
  Coefficient.msg
  Trajectory.msg
  TrajectoryPoint.msg
  Traffic.msg
  Turn.msg
  VehiclePose.msg
  Obstacle.msg
  Obstacles.msg
  PolyFitLane.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  nav_msgs
  sensor_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES kukirun_msgs
 CATKIN_DEPENDS message_generation std_msgs geometry_msgs nav_msgs sensor_msgs
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${PCL_INCLUDE_DIRS}
)
link_directories(${PCL_LIBRARIES_DIRS})
add_definitions(${PCL_DEFINITIONS})
