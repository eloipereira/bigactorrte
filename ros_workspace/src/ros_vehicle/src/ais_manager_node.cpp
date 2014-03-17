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
// Description: mse_processor_node.cpp
// 
// ==========================================================================

#include <ros/ros.h>
#include <utils/AISManager.h>
uint64_t vid = 1234;

int
main(int argc, char **argv)
{
  ros::init(argc, argv, "ais_manager_node");

  AISManager aismanager;
  aismanager.setup();

  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    aismanager.loop();
    ros::spinOnce();
    loop_rate.sleep();
  }

}
