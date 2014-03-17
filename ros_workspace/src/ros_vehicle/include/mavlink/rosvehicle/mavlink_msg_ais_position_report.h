// MESSAGE AIS_POSITION_REPORT PACKING

#define MAVLINK_MSG_ID_AIS_POSITION_REPORT 201

typedef struct __mavlink_ais_position_report_t
{
 uint32_t mmsi; ///< mmsi identification
 float sog; ///< Speed Over Ground
 float cog; ///< Course Over Ground (COG) Relative to true north, to 0.1 degree precision
 float longitude; ///< Longitude Minutes/10000
 float latitude; ///< Latitude Minutes/10000
 float heading; ///< True Heading (HDG) 0 to 359 degrees, 511 = not available.
 uint16_t timestamp; ///< timestamp in seconds
 uint8_t navigation_status; ///< 
 uint8_t rot; ///< Rate of Turn (ROT) 
} mavlink_ais_position_report_t;

#define MAVLINK_MSG_ID_AIS_POSITION_REPORT_LEN 28
#define MAVLINK_MSG_ID_201_LEN 28



#define MAVLINK_MESSAGE_INFO_AIS_POSITION_REPORT { \
	"AIS_POSITION_REPORT", \
	9, \
	{  { "mmsi", NULL, MAVLINK_TYPE_UINT32_T, 0, 0, offsetof(mavlink_ais_position_report_t, mmsi) }, \
         { "sog", NULL, MAVLINK_TYPE_FLOAT, 0, 4, offsetof(mavlink_ais_position_report_t, sog) }, \
         { "cog", NULL, MAVLINK_TYPE_FLOAT, 0, 8, offsetof(mavlink_ais_position_report_t, cog) }, \
         { "longitude", NULL, MAVLINK_TYPE_FLOAT, 0, 12, offsetof(mavlink_ais_position_report_t, longitude) }, \
         { "latitude", NULL, MAVLINK_TYPE_FLOAT, 0, 16, offsetof(mavlink_ais_position_report_t, latitude) }, \
         { "heading", NULL, MAVLINK_TYPE_FLOAT, 0, 20, offsetof(mavlink_ais_position_report_t, heading) }, \
         { "timestamp", NULL, MAVLINK_TYPE_UINT16_T, 0, 24, offsetof(mavlink_ais_position_report_t, timestamp) }, \
         { "navigation_status", NULL, MAVLINK_TYPE_UINT8_T, 0, 26, offsetof(mavlink_ais_position_report_t, navigation_status) }, \
         { "rot", NULL, MAVLINK_TYPE_UINT8_T, 0, 27, offsetof(mavlink_ais_position_report_t, rot) }, \
         } \
}


/**
 * @brief Pack a ais_position_report message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param mmsi mmsi identification
 * @param navigation_status 
 * @param rot Rate of Turn (ROT) 
 * @param sog Speed Over Ground
 * @param cog Course Over Ground (COG) Relative to true north, to 0.1 degree precision
 * @param longitude Longitude Minutes/10000
 * @param latitude Latitude Minutes/10000
 * @param heading True Heading (HDG) 0 to 359 degrees, 511 = not available.
 * @param timestamp timestamp in seconds
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_position_report_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
						       uint32_t mmsi, uint8_t navigation_status, uint8_t rot, float sog, float cog, float longitude, float latitude, float heading, uint16_t timestamp)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[28];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_float(buf, 4, sog);
	_mav_put_float(buf, 8, cog);
	_mav_put_float(buf, 12, longitude);
	_mav_put_float(buf, 16, latitude);
	_mav_put_float(buf, 20, heading);
	_mav_put_uint16_t(buf, 24, timestamp);
	_mav_put_uint8_t(buf, 26, navigation_status);
	_mav_put_uint8_t(buf, 27, rot);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 28);
#else
	mavlink_ais_position_report_t packet;
	packet.mmsi = mmsi;
	packet.sog = sog;
	packet.cog = cog;
	packet.longitude = longitude;
	packet.latitude = latitude;
	packet.heading = heading;
	packet.timestamp = timestamp;
	packet.navigation_status = navigation_status;
	packet.rot = rot;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 28);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_POSITION_REPORT;
	return mavlink_finalize_message(msg, system_id, component_id, 28, 83);
}

/**
 * @brief Pack a ais_position_report message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message was sent over
 * @param msg The MAVLink message to compress the data into
 * @param mmsi mmsi identification
 * @param navigation_status 
 * @param rot Rate of Turn (ROT) 
 * @param sog Speed Over Ground
 * @param cog Course Over Ground (COG) Relative to true north, to 0.1 degree precision
 * @param longitude Longitude Minutes/10000
 * @param latitude Latitude Minutes/10000
 * @param heading True Heading (HDG) 0 to 359 degrees, 511 = not available.
 * @param timestamp timestamp in seconds
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_position_report_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
							   mavlink_message_t* msg,
						           uint32_t mmsi,uint8_t navigation_status,uint8_t rot,float sog,float cog,float longitude,float latitude,float heading,uint16_t timestamp)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[28];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_float(buf, 4, sog);
	_mav_put_float(buf, 8, cog);
	_mav_put_float(buf, 12, longitude);
	_mav_put_float(buf, 16, latitude);
	_mav_put_float(buf, 20, heading);
	_mav_put_uint16_t(buf, 24, timestamp);
	_mav_put_uint8_t(buf, 26, navigation_status);
	_mav_put_uint8_t(buf, 27, rot);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 28);
#else
	mavlink_ais_position_report_t packet;
	packet.mmsi = mmsi;
	packet.sog = sog;
	packet.cog = cog;
	packet.longitude = longitude;
	packet.latitude = latitude;
	packet.heading = heading;
	packet.timestamp = timestamp;
	packet.navigation_status = navigation_status;
	packet.rot = rot;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 28);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_POSITION_REPORT;
	return mavlink_finalize_message_chan(msg, system_id, component_id, chan, 28, 83);
}

/**
 * @brief Encode a ais_position_report struct into a message
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param ais_position_report C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_ais_position_report_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_ais_position_report_t* ais_position_report)
{
	return mavlink_msg_ais_position_report_pack(system_id, component_id, msg, ais_position_report->mmsi, ais_position_report->navigation_status, ais_position_report->rot, ais_position_report->sog, ais_position_report->cog, ais_position_report->longitude, ais_position_report->latitude, ais_position_report->heading, ais_position_report->timestamp);
}

/**
 * @brief Send a ais_position_report message
 * @param chan MAVLink channel to send the message
 *
 * @param mmsi mmsi identification
 * @param navigation_status 
 * @param rot Rate of Turn (ROT) 
 * @param sog Speed Over Ground
 * @param cog Course Over Ground (COG) Relative to true north, to 0.1 degree precision
 * @param longitude Longitude Minutes/10000
 * @param latitude Latitude Minutes/10000
 * @param heading True Heading (HDG) 0 to 359 degrees, 511 = not available.
 * @param timestamp timestamp in seconds
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_ais_position_report_send(mavlink_channel_t chan, uint32_t mmsi, uint8_t navigation_status, uint8_t rot, float sog, float cog, float longitude, float latitude, float heading, uint16_t timestamp)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[28];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_float(buf, 4, sog);
	_mav_put_float(buf, 8, cog);
	_mav_put_float(buf, 12, longitude);
	_mav_put_float(buf, 16, latitude);
	_mav_put_float(buf, 20, heading);
	_mav_put_uint16_t(buf, 24, timestamp);
	_mav_put_uint8_t(buf, 26, navigation_status);
	_mav_put_uint8_t(buf, 27, rot);

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_POSITION_REPORT, buf, 28, 83);
#else
	mavlink_ais_position_report_t packet;
	packet.mmsi = mmsi;
	packet.sog = sog;
	packet.cog = cog;
	packet.longitude = longitude;
	packet.latitude = latitude;
	packet.heading = heading;
	packet.timestamp = timestamp;
	packet.navigation_status = navigation_status;
	packet.rot = rot;

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_POSITION_REPORT, (const char *)&packet, 28, 83);
#endif
}

#endif

// MESSAGE AIS_POSITION_REPORT UNPACKING


/**
 * @brief Get field mmsi from ais_position_report message
 *
 * @return mmsi identification
 */
static inline uint32_t mavlink_msg_ais_position_report_get_mmsi(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint32_t(msg,  0);
}

/**
 * @brief Get field navigation_status from ais_position_report message
 *
 * @return 
 */
static inline uint8_t mavlink_msg_ais_position_report_get_navigation_status(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  26);
}

/**
 * @brief Get field rot from ais_position_report message
 *
 * @return Rate of Turn (ROT) 
 */
static inline uint8_t mavlink_msg_ais_position_report_get_rot(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  27);
}

/**
 * @brief Get field sog from ais_position_report message
 *
 * @return Speed Over Ground
 */
static inline float mavlink_msg_ais_position_report_get_sog(const mavlink_message_t* msg)
{
	return _MAV_RETURN_float(msg,  4);
}

/**
 * @brief Get field cog from ais_position_report message
 *
 * @return Course Over Ground (COG) Relative to true north, to 0.1 degree precision
 */
static inline float mavlink_msg_ais_position_report_get_cog(const mavlink_message_t* msg)
{
	return _MAV_RETURN_float(msg,  8);
}

/**
 * @brief Get field longitude from ais_position_report message
 *
 * @return Longitude Minutes/10000
 */
static inline float mavlink_msg_ais_position_report_get_longitude(const mavlink_message_t* msg)
{
	return _MAV_RETURN_float(msg,  12);
}

/**
 * @brief Get field latitude from ais_position_report message
 *
 * @return Latitude Minutes/10000
 */
static inline float mavlink_msg_ais_position_report_get_latitude(const mavlink_message_t* msg)
{
	return _MAV_RETURN_float(msg,  16);
}

/**
 * @brief Get field heading from ais_position_report message
 *
 * @return True Heading (HDG) 0 to 359 degrees, 511 = not available.
 */
static inline float mavlink_msg_ais_position_report_get_heading(const mavlink_message_t* msg)
{
	return _MAV_RETURN_float(msg,  20);
}

/**
 * @brief Get field timestamp from ais_position_report message
 *
 * @return timestamp in seconds
 */
static inline uint16_t mavlink_msg_ais_position_report_get_timestamp(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint16_t(msg,  24);
}

/**
 * @brief Decode a ais_position_report message into a struct
 *
 * @param msg The message to decode
 * @param ais_position_report C-struct to decode the message contents into
 */
static inline void mavlink_msg_ais_position_report_decode(const mavlink_message_t* msg, mavlink_ais_position_report_t* ais_position_report)
{
#if MAVLINK_NEED_BYTE_SWAP
	ais_position_report->mmsi = mavlink_msg_ais_position_report_get_mmsi(msg);
	ais_position_report->sog = mavlink_msg_ais_position_report_get_sog(msg);
	ais_position_report->cog = mavlink_msg_ais_position_report_get_cog(msg);
	ais_position_report->longitude = mavlink_msg_ais_position_report_get_longitude(msg);
	ais_position_report->latitude = mavlink_msg_ais_position_report_get_latitude(msg);
	ais_position_report->heading = mavlink_msg_ais_position_report_get_heading(msg);
	ais_position_report->timestamp = mavlink_msg_ais_position_report_get_timestamp(msg);
	ais_position_report->navigation_status = mavlink_msg_ais_position_report_get_navigation_status(msg);
	ais_position_report->rot = mavlink_msg_ais_position_report_get_rot(msg);
#else
	memcpy(ais_position_report, _MAV_PAYLOAD(msg), 28);
#endif
}
