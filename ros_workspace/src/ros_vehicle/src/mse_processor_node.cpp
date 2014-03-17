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
#include <mse/MSEProcessor.h>

int main(int argc, char **argv) {


	ros::init(argc, argv, "mse_processor_node");

	MSEProcessor processor(2000);

	processor.setup();

	ros::Rate loop_rate(1);
	while (ros::ok()) {
		processor.loop();
		ros::spinOnce();
		loop_rate.sleep();
	}
}

