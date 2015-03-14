# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "piccolo_ros: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ipiccolo_ros:/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genjava REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(piccolo_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg" NAME_WE)
add_custom_target(_piccolo_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "piccolo_ros" "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genjava;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_cpp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(piccolo_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(piccolo_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(piccolo_ros_generate_messages piccolo_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_cpp _piccolo_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(piccolo_ros_gencpp)
add_dependencies(piccolo_ros_gencpp piccolo_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS piccolo_ros_generate_messages_cpp)

### Section generating for lang: genjava
### Generating Messages
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)
_generate_msg_java(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
)

### Generating Services

### Generating Module File
_generate_module_java(piccolo_ros
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
  "${ALL_GEN_OUTPUT_FILES_java}"
)

add_custom_target(piccolo_ros_generate_messages_java
  DEPENDS ${ALL_GEN_OUTPUT_FILES_java}
)
add_dependencies(piccolo_ros_generate_messages piccolo_ros_generate_messages_java)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_java _piccolo_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(piccolo_ros_genjava)
add_dependencies(piccolo_ros_genjava piccolo_ros_generate_messages_java)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS piccolo_ros_generate_messages_java)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)
_generate_msg_lisp(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(piccolo_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(piccolo_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(piccolo_ros_generate_messages piccolo_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_lisp _piccolo_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(piccolo_ros_genlisp)
add_dependencies(piccolo_ros_genlisp piccolo_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS piccolo_ros_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)
_generate_msg_py(piccolo_ros
  "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
)

### Generating Services

### Generating Module File
_generate_module_py(piccolo_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(piccolo_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(piccolo_ros_generate_messages piccolo_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWaypoint.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloRequestWaypoints.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloWPList.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloFromPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloToPayload.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloCommand.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTelemetry.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloStatus.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/piccolo_ros/msg/PiccoloTrack.msg" NAME_WE)
add_dependencies(piccolo_ros_generate_messages_py _piccolo_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(piccolo_ros_genpy)
add_dependencies(piccolo_ros_genpy piccolo_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS piccolo_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/piccolo_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(piccolo_ros_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genjava_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/piccolo_ros
    DESTINATION ${genjava_INSTALL_DIR}
  )
endif()
add_dependencies(piccolo_ros_generate_messages_java std_msgs_generate_messages_java)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/piccolo_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(piccolo_ros_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/piccolo_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(piccolo_ros_generate_messages_py std_msgs_generate_messages_py)
