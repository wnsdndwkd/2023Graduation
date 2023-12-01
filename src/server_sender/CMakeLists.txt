cmake_minimum_required(VERSION 3.0.2)
project(server_sender)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  carla_msgs
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  kukirun_msgs
)

find_package(jsoncpp REQUIRED)
find_package(sioclient REQUIRED)
find_package(Boost REQUIRED)

catkin_package(
 INCLUDE_DIRS include
#  LIBRARIES server_sender
#  CATKIN_DEPENDS carla_msgs jsoncpp nav_msgs roscpp rospy sensor_msgs sioclient std_msgs
#  DEPENDS system_lib
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${jsoncpp_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}  
                src/server_sender.cpp)     
add_dependencies(${PROJECT_NAME}  ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(${PROJECT_NAME} 
  jsoncpp
  sioclient
  ${catkin_LIBRARIES})