// MESSAGE AIS_STATUS PACKING

#define MAVLINK_MSG_ID_AIS_STATUS 203

typedef struct __mavlink_ais_status_t
{
 uint8_t action; ///< Look at AIS_STATUS_ACTION Enum
 uint8_t mode; ///< Look at AIS_STATUS_MODE Enum
} mavlink_ais_status_t;

#define MAVLINK_MSG_ID_AIS_STATUS_LEN 2
#define MAVLINK_MSG_ID_203_LEN 2



#define MAVLINK_MESSAGE_INFO_AIS_STATUS { \
	"AIS_STATUS", \
	2, \
	{  { "action", NULL, MAVLINK_TYPE_UINT8_T, 0, 0, offsetof(mavlink_ais_status_t, action) }, \
         { "mode", NULL, MAVLINK_TYPE_UINT8_T, 0, 1, offsetof(mavlink_ais_status_t, mode) }, \
         } \
}


/**
 * @brief Pack a ais_status message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param action Look at AIS_STATUS_ACTION Enum
 * @param mode Look at AIS_STATUS_MODE Enum
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_status_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
						       uint8_t action, uint8_t mode)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[2];
	_mav_put_uint8_t(buf, 0, action);
	_mav_put_uint8_t(buf, 1, mode);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 2);
#else
	mavlink_ais_status_t packet;
	packet.action = action;
	packet.mode = mode;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 2);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_STATUS;
	return mavlink_finalize_message(msg, system_id, component_id, 2, 34);
}

/**
 * @brief Pack a ais_status message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message was sent over
 * @param msg The MAVLink message to compress the data into
 * @param action Look at AIS_STATUS_ACTION Enum
 * @param mode Look at AIS_STATUS_MODE Enum
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_status_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
							   mavlink_message_t* msg,
						           uint8_t action,uint8_t mode)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[2];
	_mav_put_uint8_t(buf, 0, action);
	_mav_put_uint8_t(buf, 1, mode);

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 2);
#else
	mavlink_ais_status_t packet;
	packet.action = action;
	packet.mode = mode;

        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 2);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_STATUS;
	return mavlink_finalize_message_chan(msg, system_id, component_id, chan, 2, 34);
}

/**
 * @brief Encode a ais_status struct into a message
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param ais_status C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_ais_status_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_ais_status_t* ais_status)
{
	return mavlink_msg_ais_status_pack(system_id, component_id, msg, ais_status->action, ais_status->mode);
}

/**
 * @brief Send a ais_status message
 * @param chan MAVLink channel to send the message
 *
 * @param action Look at AIS_STATUS_ACTION Enum
 * @param mode Look at AIS_STATUS_MODE Enum
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_ais_status_send(mavlink_channel_t chan, uint8_t action, uint8_t mode)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[2];
	_mav_put_uint8_t(buf, 0, action);
	_mav_put_uint8_t(buf, 1, mode);

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_STATUS, buf, 2, 34);
#else
	mavlink_ais_status_t packet;
	packet.action = action;
	packet.mode = mode;

	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_STATUS, (const char *)&packet, 2, 34);
#endif
}

#endif

// MESSAGE AIS_STATUS UNPACKING


/**
 * @brief Get field action from ais_status message
 *
 * @return Look at AIS_STATUS_ACTION Enum
 */
static inline uint8_t mavlink_msg_ais_status_get_action(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  0);
}

/**
 * @brief Get field mode from ais_status message
 *
 * @return Look at AIS_STATUS_MODE Enum
 */
static inline uint8_t mavlink_msg_ais_status_get_mode(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  1);
}

/**
 * @brief Decode a ais_status message into a struct
 *
 * @param msg The message to decode
 * @param ais_status C-struct to decode the message contents into
 */
static inline void mavlink_msg_ais_status_decode(const mavlink_message_t* msg, mavlink_ais_status_t* ais_status)
{
#if MAVLINK_NEED_BYTE_SWAP
	ais_status->action = mavlink_msg_ais_status_get_action(msg);
	ais_status->mode = mavlink_msg_ais_status_get_mode(msg);
#else
	memcpy(ais_status, _MAV_PAYLOAD(msg), 2);
#endif
}
