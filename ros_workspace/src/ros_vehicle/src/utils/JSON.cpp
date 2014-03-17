/*
 * JSON.cpp
 *
 *  Created on: May 24, 2013
 *      Author: posilva
 */

#include <utils/JSON.h>

JSON::JSON() {
	// TODO Auto-generated constructor stub

}

JSON::~JSON() {
	// TODO Auto-generated destructor stub
}

std::string JSON::removeStyle(std::string& str) {
	std::string::iterator end_pos = std::remove(str.begin(), str.end(), '\n');
	str.erase(end_pos, str.end());
	end_pos = std::remove(str.begin(), str.end(), '\t');
	str.erase(end_pos, str.end());
	end_pos = std::remove(str.begin(), str.end(), ' ');
	str.erase(end_pos, str.end());
	return str;
}

std::string JSON::encodeWaypoint(const ros_vehicle_msgs::Waypoint& wp) {
	Json::Value root;

	root["waypointId"] = wp.waypointId;
	root["nextWp"] = wp.nextWp;
	root["previousWp"] = wp.previousWp;
	root["start"] = wp.start;
	root["stop"] = wp.stop;
	root["home"] = wp.waypointId;
	// LatLngAlt Data
	Json::Value position(Json::objectValue);
	position["latitude"] = wp.position.latitude;
	position["longitude"] = wp.position.longitude;
	position["altitude"] = wp.position.altitude;
	//! Loiter data
	Json::Value loiter(Json::objectValue);
	loiter["active"] = wp.loiter.active;
	loiter["clockwise"] = wp.loiter.clockwise;
	loiter["radius"] = wp.loiter.radius;
	loiter["time_sec"] = wp.loiter.time_sec;
	loiter["times"] = wp.loiter.times;

	root["position"] = (position);
	root["loiter"] = (loiter);

	std::string s = root.toStyledString();
	return removeStyle(s);
}

void JSON::decodeWaypoint(const std::string json, ros_vehicle_msgs::Waypoint *wp ) {
	if (wp!=NULL){
		Json::Reader reader;
		Json::Value root;
		if(reader.parse(json,root,false)){
			wp->waypointId=root["waypointId"].asUInt();
			wp->nextWp=root["nextWp"].asUInt();
			wp->previousWp=root["previousWp"].asUInt();
			wp->start=root["start"].asBool();
			wp->stop=root["stop"].asBool();
			wp->home=root["home"].asBool();
			Json::Value position=root["position"];
			wp->position.latitude=  position["latitude"].asFloat();
			wp->position.longitude=  position["longitude"].asFloat();
			wp->position.altitude=  position["altitude"].asFloat();
			Json::Value loiter=root["loiter"];
			wp->loiter.active=loiter["active"].asBool();
			wp->loiter.clockwise=loiter["active"].asBool();
			wp->loiter.radius=loiter["radius"].asUInt();
			wp->loiter.time_sec=loiter["time_sec"].asUInt();
			wp->loiter.times=loiter["times"].asUInt();
		}
	}
}
