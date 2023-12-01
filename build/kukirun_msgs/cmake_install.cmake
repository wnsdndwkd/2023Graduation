# Install script for directory: /home/junung/git/2023Graduation/src/kukirun_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/junung/git/2023Graduation/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kukirun_msgs/msg" TYPE FILE FILES
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Coefficient.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Trajectory.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/TrajectoryPoint.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Traffic.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Turn.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/VehiclePose.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacle.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/Obstacles.msg"
    "/home/junung/git/2023Graduation/src/kukirun_msgs/msg/PolyFitLane.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kukirun_msgs/cmake" TYPE FILE FILES "/home/junung/git/2023Graduation/build/kukirun_msgs/catkin_generated/installspace/kukirun_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/junung/git/2023Graduation/devel/include/kukirun_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/junung/git/2023Graduation/devel/share/roseus/ros/kukirun_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/junung/git/2023Graduation/devel/share/common-lisp/ros/kukirun_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/junung/git/2023Graduation/devel/share/gennodejs/ros/kukirun_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/junung/git/2023Graduation/devel/lib/python3/dist-packages/kukirun_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/junung/git/2023Graduation/devel/lib/python3/dist-packages/kukirun_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/junung/git/2023Graduation/build/kukirun_msgs/catkin_generated/installspace/kukirun_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kukirun_msgs/cmake" TYPE FILE FILES "/home/junung/git/2023Graduation/build/kukirun_msgs/catkin_generated/installspace/kukirun_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kukirun_msgs/cmake" TYPE FILE FILES
    "/home/junung/git/2023Graduation/build/kukirun_msgs/catkin_generated/installspace/kukirun_msgsConfig.cmake"
    "/home/junung/git/2023Graduation/build/kukirun_msgs/catkin_generated/installspace/kukirun_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kukirun_msgs" TYPE FILE FILES "/home/junung/git/2023Graduation/src/kukirun_msgs/package.xml")
endif()

