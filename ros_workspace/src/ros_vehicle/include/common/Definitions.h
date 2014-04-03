

#ifndef DEFINITIONS_H_
#define DEFINITIONS_H_
#include <map>
#include <vector>

#include <common/Commons.h>
#include <common/BigActorMsgs.h>

static
const char * MISSION_STATE_ESTIMATE_TOPIC = "/mse";
static const char * INTERNAL_MISSION_STATE_ESTIMATE_TOPIC = "/mse_internal";
static const char * EXTERNAL_MISSION_STATE_ESTIMATE_TOPIC = "/mse_external";
static const char * STRUCTURE_STATE_ESTIMATE_TOPIC = "/sse";
static const char * INTERNAL_STRUCTURE_STATE_ESTIMATE_TOPIC = "/sse_internal";
static const char * EXTERNAL_STRUCTURE_STATE_ESTIMATE_TOPIC = "/sse_external";
static const char * TASK_STATE_TOPIC = "/TaskState";
static const char * TRACK_STATUS_TOPIC = "/TrackStatus";
static const char * VEHICLE_STATE_TOPIC = "/VehicleState";
static const char * WAYPOINT_TOPIC = "/Waypoint";
static const char * WAYPOINT_LIST_TOPIC = "/WaypointList";

typedef std::map<uint64_t, uint64_t> TimestampsMap_t;
typedef std::map<uint64_t, big_actor_msgs::Vehicle> VehiclesMap_t;
typedef std::map<uint32_t, big_actor_msgs::Task> TasksMap_t;
typedef std::map<uint32_t, big_actor_msgs::Location> LocationsMap_t;
typedef std::map<uint64_t, std::list<big_actor_msgs::Connectivity> > ConnectivityMap_t;
typedef std::map<std::string, big_actor_msgs::Hosting> HostingsMap_t;

//! redefinition of MSE message Vector Types
typedef std::vector<big_actor_msgs::Vehicle> VehiclesVector_t;
typedef std::vector<big_actor_msgs::Task> TasksVector_t;
typedef std::vector<big_actor_msgs::Location> LocationsVector_t;
typedef std::vector<big_actor_msgs::Connectivity> ConnectivityVector_t;
typedef std::vector<big_actor_msgs::Hosting> HostingsVector_t;


#endif /* DEFINITIONS_H_ */

