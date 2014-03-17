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
#include <big_actor_msgs/StructureStateEstimate.h>
#include <big_actor_msgs/MissionStateEstimate.h>
#include <ros_vehicle_msgs/GatewayData.h>
#include <utils/Utils.h>
/**
#include <net/GatewayServer.h>
uint64_t vid = 1234;

int
main(int argc, char **argv)
{

  ros::init(argc, argv, "mse_gateway_node");

  GatewayServer gateway;
  gateway.setup();
  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    gateway.loop();
    ros::spinOnce();
    loop_rate.sleep();
  }

}
**/

 #include <net/MSEGateway.h>
 uint64_t vid = 1234;

 int
 main(int argc, char **argv)
 {

 ros::init(argc, argv, "mse_gateway_node");

 MSEGateway gateway;
 gateway.setup();
 ros::Rate loop_rate(1);
 while (ros::ok())
 {
 gateway.loop();
 ros::spinOnce();
 loop_rate.sleep();
 }

 }

