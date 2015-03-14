# Install script for directory: /home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/eloi/bigactorrte/ros_workspace/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_vehicle_msgs/msg" TYPE FILE FILES
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/LoiterData.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TrackStatus.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/VehicleState.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/Waypoint.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/TaskState.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GotoCommand.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/SearchCommand.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/GatewayData.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/ServiceReturnBool.msg"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/msg/WaypointList.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_vehicle_msgs/srv" TYPE FILE FILES
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddLocation.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddTask.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AssignTask.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AbortTask.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetTasks.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetLocations.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetVehicles.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOn.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISOff.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISAddFilter.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISRemoveFilter.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AISClearFilters.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetWaypoints.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/GetUAVWaypoint.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/UpdateWaypoint.srv"
    "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/srv/AddStaticVehicle.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_vehicle_msgs/cmake" TYPE FILE FILES "/home/eloi/bigactorrte/ros_workspace/build/ros_vehicle_msgs/catkin_generated/installspace/ros_vehicle_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/eloi/bigactorrte/ros_workspace/devel/include/ros_vehicle_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/eloi/bigactorrte/ros_workspace/devel/share/common-lisp/ros/ros_vehicle_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/eloi/bigactorrte/ros_workspace/devel/lib/python2.7/dist-packages/ros_vehicle_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/eloi/bigactorrte/ros_workspace/devel/lib/python2.7/dist-packages/ros_vehicle_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/eloi/bigactorrte/ros_workspace/build/ros_vehicle_msgs/catkin_generated/installspace/ros_vehicle_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_vehicle_msgs/cmake" TYPE FILE FILES "/home/eloi/bigactorrte/ros_workspace/build/ros_vehicle_msgs/catkin_generated/installspace/ros_vehicle_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_vehicle_msgs/cmake" TYPE FILE FILES
    "/home/eloi/bigactorrte/ros_workspace/build/ros_vehicle_msgs/catkin_generated/installspace/ros_vehicle_msgsConfig.cmake"
    "/home/eloi/bigactorrte/ros_workspace/build/ros_vehicle_msgs/catkin_generated/installspace/ros_vehicle_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_vehicle_msgs" TYPE FILE FILES "/home/eloi/bigactorrte/ros_workspace/src/ros_vehicle_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

