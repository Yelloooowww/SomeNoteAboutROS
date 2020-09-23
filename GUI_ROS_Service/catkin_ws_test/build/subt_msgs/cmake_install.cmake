# Install script for directory: /home/yellow/catkin_ws_test/src/subt_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yellow/catkin_ws_test/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/subt_msgs/msg" TYPE FILE FILES
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/BoundingBox.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/BoundingBoxes.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/bb_input.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/arti_input.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/mask_center.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/masks.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/ArtifactPose.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/ArtifactPoseArray.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/AnchorBallDetection.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/SubTInfo.msg"
    "/home/yellow/catkin_ws_test/src/subt_msgs/msg/GloraPack.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/subt_msgs/srv" TYPE FILE FILES
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/int8.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/int32.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/pause.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/node_stat.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/start.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/stop.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/status.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/pose.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/ultra_info.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/frame_switch.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/report.srv"
    "/home/yellow/catkin_ws_test/src/subt_msgs/srv/artifact.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/subt_msgs/cmake" TYPE FILE FILES "/home/yellow/catkin_ws_test/build/subt_msgs/catkin_generated/installspace/subt_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yellow/catkin_ws_test/devel/include/subt_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yellow/catkin_ws_test/devel/share/roseus/ros/subt_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yellow/catkin_ws_test/devel/share/common-lisp/ros/subt_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yellow/catkin_ws_test/devel/share/gennodejs/ros/subt_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/yellow/catkin_ws_test/devel/lib/python2.7/dist-packages/subt_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/yellow/catkin_ws_test/devel/lib/python2.7/dist-packages/subt_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yellow/catkin_ws_test/build/subt_msgs/catkin_generated/installspace/subt_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/subt_msgs/cmake" TYPE FILE FILES "/home/yellow/catkin_ws_test/build/subt_msgs/catkin_generated/installspace/subt_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/subt_msgs/cmake" TYPE FILE FILES
    "/home/yellow/catkin_ws_test/build/subt_msgs/catkin_generated/installspace/subt_msgsConfig.cmake"
    "/home/yellow/catkin_ws_test/build/subt_msgs/catkin_generated/installspace/subt_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/subt_msgs" TYPE FILE FILES "/home/yellow/catkin_ws_test/src/subt_msgs/package.xml")
endif()

