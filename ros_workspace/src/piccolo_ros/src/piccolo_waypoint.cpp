#include <ros/ros.h>
#include <vector>
typedef std::vector<int> WaypointIdList_t
WaypointIdList_t valid_waypoints;

void get_valid_waypints(WaypointIdList_t& list) {

}

int main(int argc, char **argv) {
	ros::init(argc, argv, "piccolo_waypoint");

	ros::NodeHandle n;

	ros::spin();

}
