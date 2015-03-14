# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_vehicle_msgs: 10 messages, 16 services")

set(MSG_I_FLAGS "-Iros_vehicle_msgs:/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg;-Ibig_actor_msgs:/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genjava REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_vehicle_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv" "big_actor_msgs/Task"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg" "ros_vehicle_msgs/LoiterData:std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv" "ros_vehicle_msgs/LoiterData:ros_vehicle_msgs/ServiceReturnBool:ros_vehicle_msgs/Waypoint:std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv" "big_actor_msgs/Location:big_actor_msgs/LatLng"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg" "big_actor_msgs/Location:big_actor_msgs/LatLng"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv" "big_actor_msgs/Vehicle:big_actor_msgs/LatLngAlt:big_actor_msgs/Network:ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv" "ros_vehicle_msgs/LoiterData:ros_vehicle_msgs/ServiceReturnBool:ros_vehicle_msgs/Waypoint:std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv" "big_actor_msgs/Vehicle:big_actor_msgs/LatLngAlt:big_actor_msgs/Network"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv" "ros_vehicle_msgs/ServiceReturnBool:big_actor_msgs/Location:big_actor_msgs/LatLng"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg" "ros_vehicle_msgs/LoiterData:ros_vehicle_msgs/Waypoint:std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg" "ros_vehicle_msgs/LoiterData:ros_vehicle_msgs/Waypoint:std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv" "ros_vehicle_msgs/LoiterData:ros_vehicle_msgs/ServiceReturnBool:ros_vehicle_msgs/Waypoint:std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv" "big_actor_msgs/Task:ros_vehicle_msgs/ServiceReturnBool"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg" ""
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg" "std_msgs/Header:big_actor_msgs/LatLngAlt"
)

get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv" NAME_WE)
add_custom_target(_ros_vehicle_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_vehicle_msgs" "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv" "ros_vehicle_msgs/ServiceReturnBool"
)

#
#  langs = gencpp;genjava;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Services
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_cpp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Module File
_generate_module_cpp(ros_vehicle_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_vehicle_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_vehicle_msgs_generate_messages ros_vehicle_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_cpp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vehicle_msgs_gencpp)
add_dependencies(ros_vehicle_msgs_gencpp ros_vehicle_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vehicle_msgs_generate_messages_cpp)

### Section generating for lang: genjava
### Generating Messages
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Services
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_java(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Module File
_generate_module_java(ros_vehicle_msgs
  ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
  "${ALL_GEN_OUTPUT_FILES_java}"
)

add_custom_target(ros_vehicle_msgs_generate_messages_java
  DEPENDS ${ALL_GEN_OUTPUT_FILES_java}
)
add_dependencies(ros_vehicle_msgs_generate_messages ros_vehicle_msgs_generate_messages_java)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_java _ros_vehicle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vehicle_msgs_genjava)
add_dependencies(ros_vehicle_msgs_genjava ros_vehicle_msgs_generate_messages_java)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vehicle_msgs_generate_messages_java)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Services
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_lisp(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Module File
_generate_module_lisp(ros_vehicle_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_vehicle_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_vehicle_msgs_generate_messages ros_vehicle_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_lisp _ros_vehicle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vehicle_msgs_genlisp)
add_dependencies(ros_vehicle_msgs_genlisp ros_vehicle_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vehicle_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_msg_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Services
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Vehicle.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Network.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Task.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/Location.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLng.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg;/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/eloi/bigactorrte/ros_workspace/src/big_actor_msgs/msg/LatLngAlt.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)
_generate_srv_py(ros_vehicle_msgs
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv"
  "${MSG_I_FLAGS}"
  "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
)

### Generating Module File
_generate_module_py(ros_vehicle_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_vehicle_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_vehicle_msgs_generate_messages ros_vehicle_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv" NAME_WE)
add_dependencies(ros_vehicle_msgs_generate_messages_py _ros_vehicle_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_vehicle_msgs_genpy)
add_dependencies(ros_vehicle_msgs_genpy ros_vehicle_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_vehicle_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_vehicle_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_vehicle_msgs_generate_messages_cpp big_actor_msgs_generate_messages_cpp)

if(genjava_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genjava_INSTALL_DIR}/ros_vehicle_msgs
    DESTINATION ${genjava_INSTALL_DIR}
  )
endif()
add_dependencies(ros_vehicle_msgs_generate_messages_java big_actor_msgs_generate_messages_java)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_vehicle_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_vehicle_msgs_generate_messages_lisp big_actor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_vehicle_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_vehicle_msgs_generate_messages_py big_actor_msgs_generate_messages_py)
