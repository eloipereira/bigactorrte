// MESSAGE AIS_FILTER PACKING

#define MAVLINK_MSG_ID_AIS_FILTER 204

typedef struct __mavlink_ais_filter_t
{
 uint32_t mmsi; ///< mmsi identification
 uint8_t action; ///< Look at AIS_FILTER_ACTION Enum
} mavlink_ais_filter_t;

#define MAVLINK_MSG_ID_AIS_FILTER_LEN 5
#define MAVLINK_MSG_ID_204_LEN 5



#define MAVLINK_MESSAGE_INFO_AIS_FILTER { \
	"AIS_FILTER", \
	2, \
	{  { "mmsi", NULL, MAVLINK_TYPE_UINT32_T, 0, 0, offsetof(mavlink_ais_filter_t, mmsi) }, \
         { "action", NULL, MAVLINK_TYPE_UINT8_T, 0, 4, offsetof(mavlink_ais_filter_t, action) }, \
         } \
}


/**
 * @brief Pack a ais_filter message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param action Look at AIS_FILTER_ACTION Enum
 * @param mmsi mmsi identification
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_filter_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
						       uint8_t action, uint32_t mmsi)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[5];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_uint8_t(buf, 4, action);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 5);
#else
	mavlink_ais_filter_t packet;
	packet.mmsi = mmsi;
	packet.action = action;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 5);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_FILTER;
	return mavlink_finalize_message(msg, system_id, component_id, 5, 44);
}

/**
 * @brief Pack a ais_filter message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message was sent over
 * @param msg The MAVLink message to compress the data into
 * @param action Look at AIS_FILTER_ACTION Enum
 * @param mmsi mmsi identification
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_filter_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
							   mavlink_message_t* msg,
						           uint8_t action,uint32_t mmsi)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[5];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_uint8_t(buf, 4, action);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 5);
#else
	mavlink_ais_filter_t packet;
	packet.mmsi = mmsi;
	packet.action = action;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 5);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_FILTER;
	return mavlink_finalize_message_chan(msg, system_id, component_id, chan, 5, 44);
}

/**
 * @brief Encode a ais_filter struct into a message
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param ais_filter C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_ais_filter_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_ais_filter_t* ais_filter)
{
	return mavlink_msg_ais_filter_pack(system_id, component_id, msg, ais_filter->action, ais_filter->mmsi);
}

/**
 * @brief Send a ais_filter message
 * @param chan MAVLink channel to send the message
 *
 * @param action Look at AIS_FILTER_ACTION Enum
 * @param mmsi mmsi identification
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_ais_filter_send(mavlink_channel_t chan, uint8_t action, uint32_t mmsi)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[5];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_uint8_t(buf, 4, action);

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_FILTER, buf, 5, 44);
#else
	mavlink_ais_filter_t packet;
	packet.mmsi = mmsi;
	packet.action = action;

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_FILTER, (const char *)&packet, 5, 44);
#endif
}

#endif

// MESSAGE AIS_FILTER UNPACKING


/**
 * @brief Get field action from ais_filter message
 *
 * @return Look at AIS_FILTER_ACTION Enum
 */
static inline uint8_t mavlink_msg_ais_filter_get_action(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  4);
}

/**
 * @brief Get field mmsi from ais_filter message
 *
 * @return mmsi identification
 */
static inline uint32_t mavlink_msg_ais_filter_get_mmsi(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint32_t(msg,  0);
}

/**
 * @brief Decode a ais_filter message into a struct
 *
 * @param msg The message to decode
 * @param ais_filter C-struct to decode the message contents into
 */
static inline void mavlink_msg_ais_filter_decode(const mavlink_message_t* msg, mavlink_ais_filter_t* ais_filter)
{
#if MAVLINK_NEED_BYTE_SWAP
	ais_filter->mmsi = mavlink_msg_ais_filter_get_mmsi(msg);
	ais_filter->action = mavlink_msg_ais_filter_get_action(msg);
#else
	memcpy(ais_filter, _MAV_PAYLOAD(msg), 5);
#endif
}
