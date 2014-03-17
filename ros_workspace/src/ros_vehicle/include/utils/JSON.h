/*
 * JSON.h
 *
 *  Created on: May 24, 2013
 *      Author: posilva
 */

#ifndef JSON_H_
#define JSON_H_
#include <string>
#include <ros_vehicle_msgs/Waypoint.h>
#include <json/json-forwards.h>
#include <json/json.h>

class JSON {
public:
	JSON();
	virtual ~JSON();
	//! Encode a Waypoint ROS message as JSON representation
	static std::string encodeWaypoint(const ros_vehicle_msgs::Waypoint& wp);
	//! Decode Waypoint JSON representation to a ROS message
	static void decodeWaypoint(const std::string json, ros_vehicle_msgs::Waypoint *wp);

private:
	static std::string removeStyle(std::string& str);
};

#endif /* JSON_H_ */
