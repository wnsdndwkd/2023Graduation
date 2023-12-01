# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kukirun_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ikukirun_msgs:/home/junung/git/2023Graduation/src/kukirun_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kukirun_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" ""
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" "kukirun_msgs/TrajectoryPoint"
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" ""
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" ""
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" ""
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" ""
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" ""
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" "kukirun_msgs/Obstacle"
)

get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" NAME_WE)
add_custom_target(_kukirun_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kukirun_msgs" "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_cpp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(kukirun_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kukirun_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kukirun_msgs_generate_messages kukirun_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_cpp _kukirun_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kukirun_msgs_gencpp)
add_dependencies(kukirun_msgs_gencpp kukirun_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kukirun_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_eus(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(kukirun_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kukirun_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kukirun_msgs_generate_messages kukirun_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_eus _kukirun_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kukirun_msgs_geneus)
add_dependencies(kukirun_msgs_geneus kukirun_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kukirun_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_lisp(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(kukirun_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kukirun_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kukirun_msgs_generate_messages kukirun_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_lisp _kukirun_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kukirun_msgs_genlisp)
add_dependencies(kukirun_msgs_genlisp kukirun_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kukirun_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_nodejs(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kukirun_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kukirun_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kukirun_msgs_generate_messages kukirun_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_nodejs _kukirun_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kukirun_msgs_gennodejs)
add_dependencies(kukirun_msgs_gennodejs kukirun_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kukirun_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)
_generate_msg_py(kukirun_msgs
  "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(kukirun_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kukirun_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kukirun_msgs_generate_messages kukirun_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg" NAME_WE)
add_dependencies(kukirun_msgs_generate_messages_py _kukirun_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kukirun_msgs_genpy)
add_dependencies(kukirun_msgs_genpy kukirun_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kukirun_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kukirun_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kukirun_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kukirun_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(kukirun_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(kukirun_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kukirun_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kukirun_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(kukirun_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(kukirun_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(kukirun_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kukirun_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kukirun_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kukirun_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(kukirun_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(kukirun_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kukirun_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kukirun_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(kukirun_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(kukirun_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(kukirun_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kukirun_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kukirun_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kukirun_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(kukirun_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(kukirun_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
