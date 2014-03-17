cmake_minimum_required(VERSION 2.8.3)
project(ros_vehicle)


set(ARCH_BUILD "64")

if (ARCH_BUILD EQUAL "64")
    set(CMAKE_CXX_FLAGS "")
else(ARCH_BUILD)
    set(CMAKE_CXX_FLAGS "-m32")
endif (ARCH_BUILD EQUAL "64")

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp ros_vehicle_msgs big_actor_msgs piccolo_ros)


## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/groovy/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

#######################################
## Declare ROS messages and services ##
#######################################

## Generate messages in the 'msg' folder
#add_message_files(
#   FILES
# 
#)

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate added messages and services with any dependencies listed here
#generate_messages(
#   DEPENDENCIES
#   big_actor_msgs
#   ros_vehicle_msgs
#   piccolo_ros
#)


###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
   INCLUDE_DIRS include
#  LIBRARIES ros_vehicle
   CATKIN_DEPENDS  roscpp rospy big_actor_msgs piccolo_ros ros_vehicle_msgs

#  DEPENDS system_lib
)

###########
## Build ##
###########

set(VENDOR_DIR_JSONCPP "vendors/jsoncpp/dist/")

file(GLOB_RECURSE VENDOR_SOURCES_JSONCPP "${VENDOR_DIR_JSONCPP}/*.cpp")

file(GLOB_RECURSE PACKAGE_SOURCES_AP "src/ap/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_MSE "src/mse/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_TASKS "src/tasks/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_UTILS "src/utils/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_CTRL "src/ctrl/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_COMMON "src/common/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_NET "src/net/*.cpp")
file(GLOB_RECURSE PACKAGE_SOURCES_CORE "src/core/*.cpp")
 
## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(include
  ${catkin_INCLUDE_DIRS}
  ${VENDOR_DIR_JSONCPP}
)

## Declare a cpp library
#add_library(MSEProcessor
#   src/mse/MSEProcessor.cpp
#)
## Declare a cpp executable
add_executable(mse_processor_node src/mse_processor_node.cpp ${PACKAGE_SOURCES_MSE} ${PACKAGE_SOURCES_COMMON})
add_executable(autopilot_interface_node src/autopilot_interface_node.cpp ${PACKAGE_SOURCES_COMMON} ${PACKAGE_SOURCES_AP})
add_executable(task_manager_node src/task_manager_node.cpp ${PACKAGE_SOURCES_TASKS} ${PACKAGE_SOURCES_UTILS} ${PACKAGE_SOURCES_COMMON} ${VENDOR_SOURCES_JSONCPP})
add_executable(ais_manager_node src/ais_manager_node.cpp ${PACKAGE_SOURCES_TASKS} ${PACKAGE_SOURCES_UTILS} ${PACKAGE_SOURCES_COMMON} ${VENDOR_SOURCES_JSONCPP})
add_executable(mse_gateway_node src/mse_gateway_node.cpp ${PACKAGE_SOURCES_NET} ${PACKAGE_SOURCES_UTILS} ${PACKAGE_SOURCES_COMMON} ${VENDOR_SOURCES_JSONCPP})
add_executable(mission_manager_node src/mission_manager_node.cpp ${PACKAGE_SOURCES_CORE} ${PACKAGE_SOURCES_COMMON})

### TESTING
add_executable(main src/test/Main.cpp  ${PACKAGE_SOURCES_COMMON} ${PACKAGE_SOURCES_NET}  ${PACKAGE_SOURCES_UTILS} ${VENDOR_SOURCES_JSONCPP})

target_link_libraries(mse_processor_node ${catkin_LIBRARIES})
target_link_libraries(autopilot_interface_node ${catkin_LIBRARIES})
target_link_libraries(task_manager_node ${catkin_LIBRARIES})
target_link_libraries(ais_manager_node ${catkin_LIBRARIES})
target_link_libraries(mse_gateway_node ${catkin_LIBRARIES})
target_link_libraries(mission_manager_node ${catkin_LIBRARIES})
target_link_libraries(main ${catkin_LIBRARIES})

#############
## Install ##
#############

# all install targets should use catkin DESTINATION variables
# See http://ros.org/doc/groovy/api/catkin/html/adv_user_guide/variables.html

## Mark executable scripts (Python etc.) for installation
## in contrast to setup.py, you can choose the destination
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS ros_vehicle ros_vehicle_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_ros_vehicle.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)

