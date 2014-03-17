// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: ros_vehicle@ros_vehicle
// Date:    Apr 26, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: autopilot_interface_node.cpp
// 
// ==========================================================================
#include <ros/ros.h>
#include <ap/AutopilotNode.h>
int
main(int argc, char **argv)
{
  ros::init(argc, argv, "autopilot_interface_node");

  AutopilotNode ap;
  ap.setup();
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    ap.loop();
    ros::spinOnce();
    loop_rate.sleep();
  }
}
