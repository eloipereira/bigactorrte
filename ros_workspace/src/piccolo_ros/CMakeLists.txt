cmake_minimum_required(VERSION 2.8.3)
project(piccolo_ros)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
set(CPU32 1)

find_package(catkin REQUIRED COMPONENTS message_generation roscpp rospy std_msgs)
# make sure configure headers are build before node using them
## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


## Uncomment this if the package has a setup.py. This macro ensures
## modules and global scripts declared therein get installed
## See http://ros.org/doc/groovy/api/catkin/html/user_guide/setup_dot_py.html
# catkin_python_setup()

#*************************************************
# Set Include Directories
#*************************************************

if (CPU32)
    set (ARCH_BUILD "32")
    set(CMAKE_CXX_FLAGS "-m32")
    
else(CPU32)
    set (ARCH_BUILD "64")
    set(CMAKE_CXX_FLAGS "")
endif (CPU32)
link_directories("${PROJECT_SOURCE_DIR}/libs/${ARCH_BUILD}")
set(PICCOLO_SDK_LIB_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include/libpiccolo)
set(ARTE_LIB_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include/libarte)
#######################################
## Declare ROS messages and services ##
#######################################

## Generate messages in the 'msg' folder
add_message_files(
    FILES
    PiccoloCommand.msg
    PiccoloTelemetry.msg
    PiccoloTrack.msg
    PiccoloStatus.msg
    PiccoloWaypoint.msg
    PiccoloWPList.msg
    PiccoloFromPayload.msg
    PiccoloToPayload.msg
    PiccoloRequestWaypoints.msg
)

## Generate services in the 'srv' folder
#add_service_files(
#   FILES
#   PiccoloQueryWaypoints.srv
#
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
   std_msgs  # Or other packages containing msgs
)


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
#  LIBRARIES dynamic_tutorials
 
  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(include
  ${PICCOLO_SDK_LIB_INCLUDE_DIR}
  ${ARTE_LIB_INCLUDE_DIR}
  ${catkin_INCLUDE_DIRS}
)

## Declare a cpp library
# add_library(dynamic_tutorials
#   src/${PROJECT_NAME}/dynamic_tutorials.cpp
# )

## Declare a cpp executable
#add_executable(exddample_node src/example_node.cpp)

add_executable(piccolo_payload src/piccolo_payload.cpp)
add_executable(piccolo_driver src/piccolo_driver.cpp )
add_executable(piccolo_controller src/piccolo_controller.cpp)
#add_dependencies(example_node dynamic_tutorials_gencfg)
## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
##! We must first generate the messages, these statements enforce that
add_dependencies(piccolo_driver piccolo_ros_gencpp)  
add_dependencies(piccolo_payload piccolo_ros_gencpp)
add_dependencies(piccolo_controller piccolo_ros_gencpp)

## Specify libraries to link a library or executable target against
target_link_libraries(piccolo_driver  piccolo arte ${catkin_LIBRARIES})
target_link_libraries(piccolo_payload  piccolo arte ${catkin_LIBRARIES})
target_link_libraries(piccolo_controller  piccolo arte ${catkin_LIBRARIES})


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
# install(TARGETS dynamic_tutorials dynamic_tutorials_node
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
# catkin_add_gtest(${PROJECT_NAME}-test test/test_dynamic_tutorials.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)

