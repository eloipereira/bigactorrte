# BigActor Runtime Environment over ROS

This repository provides the necessary ROS packages to run BigActors over 
the Robot Operating System. 

## Features: 

* Scala BigActor Langauge 

* ros_vehicle for controlling unmanned vehicles (currently supports UAVs equipped with piccolo autopilot)

* web-based visualization of the mission

## Dependencies:

* ROS Hydro

## Instalation:

* Clone the repository

* cd ~/bigactorrte/ros_workspace/src

* catkin_init_workspace

* cd ..

* catkin_make

* source devel/setup.bash

## Run in simulation environment:

* Start a Software in the Loop Simulation at the Piccolo framework (this can be done in a different machine)

* rosed ros_vehicle SIL.launch

* Update the following fields with the IP and port of your piccolo simulation

..* <param name="host" type="str" value="IP_PICCOLO_SIMULATION" />

..* <param name="port" type="str" value="PORT_PICCOLO_SIMULATION (default 2001)" />

* roslaunch ros_vehicle SIL.launch