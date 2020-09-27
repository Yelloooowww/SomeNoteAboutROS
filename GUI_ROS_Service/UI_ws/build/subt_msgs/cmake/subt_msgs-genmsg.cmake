# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "subt_msgs: 11 messages, 12 services")

set(MSG_I_FLAGS "-Isubt_msgs:/home/yellow/UI_ws/src/subt_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(subt_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" "subt_msgs/ArtifactPose:subt_msgs/ArtifactPoseArray:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" "subt_msgs/ArtifactPose:subt_msgs/ArtifactPoseArray:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" "subt_msgs/ArtifactPose:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" "subt_msgs/mask_center:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" "subt_msgs/ArtifactPose:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" ""
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" "sensor_msgs/Image:subt_msgs/BoundingBox:std_msgs/Header"
)

get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" NAME_WE)
add_custom_target(_subt_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "subt_msgs" "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_msg_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)

### Generating Services
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)
_generate_srv_cpp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
)

### Generating Module File
_generate_module_cpp(subt_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(subt_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(subt_msgs_generate_messages subt_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_cpp _subt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(subt_msgs_gencpp)
add_dependencies(subt_msgs_gencpp subt_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS subt_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_msg_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)

### Generating Services
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)
_generate_srv_eus(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
)

### Generating Module File
_generate_module_eus(subt_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(subt_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(subt_msgs_generate_messages subt_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_eus _subt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(subt_msgs_geneus)
add_dependencies(subt_msgs_geneus subt_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS subt_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_msg_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)

### Generating Services
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)
_generate_srv_lisp(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
)

### Generating Module File
_generate_module_lisp(subt_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(subt_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(subt_msgs_generate_messages subt_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_lisp _subt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(subt_msgs_genlisp)
add_dependencies(subt_msgs_genlisp subt_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS subt_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_msg_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)

### Generating Services
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)
_generate_srv_nodejs(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
)

### Generating Module File
_generate_module_nodejs(subt_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(subt_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(subt_msgs_generate_messages subt_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_nodejs _subt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(subt_msgs_gennodejs)
add_dependencies(subt_msgs_gennodejs subt_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS subt_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_msg_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)

### Generating Services
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)
_generate_srv_py(subt_msgs
  "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv"
  "${MSG_I_FLAGS}"
  "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
)

### Generating Module File
_generate_module_py(subt_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(subt_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(subt_msgs_generate_messages subt_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/ultra_info.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/mask_center.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/frame_switch.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pause.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/bb_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/arti_input.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/artifact.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/SubTInfo.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPoseArray.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/masks.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/AnchorBallDetection.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/start.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/GloraPack.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/pose.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/status.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/node_stat.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/ArtifactPose.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int8.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/report.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/stop.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/msg/BoundingBoxes.msg" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yellow/UI_ws/src/subt_msgs/srv/int32.srv" NAME_WE)
add_dependencies(subt_msgs_generate_messages_py _subt_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(subt_msgs_genpy)
add_dependencies(subt_msgs_genpy subt_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS subt_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/subt_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(subt_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(subt_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(subt_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/subt_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(subt_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(subt_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(subt_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/subt_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(subt_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(subt_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(subt_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/subt_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(subt_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(subt_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(subt_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/subt_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(subt_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(subt_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(subt_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
