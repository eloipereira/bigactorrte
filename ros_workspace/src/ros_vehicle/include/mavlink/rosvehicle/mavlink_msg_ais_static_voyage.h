// MESSAGE AIS_STATIC_VOYAGE PACKING

#define MAVLINK_MSG_ID_AIS_STATIC_VOYAGE 202

typedef struct __mavlink_ais_static_voyage_t
{
 uint32_t mmsi; ///< mmsi identification
 uint32_t imo; ///< 
 uint16_t to_bow; ///< 
 uint16_t to_stern; ///< 
 uint8_t callSign[7]; ///< 
 uint8_t vessel_name[20]; ///< 
 uint8_t destination[20]; ///< 
 uint8_t ship_type; ///< 
 uint8_t toPort; ///< 
 uint8_t to_starboard; ///< 
 uint8_t position_fix_type; ///< 
 uint8_t eta_month; ///< 1-12, 0=N/A (default)
 uint8_t eta_day; ///< 1-31, 0=N/A (default)
 uint8_t eta_hour; ///< 0-23, 24=N/A (default)
 uint8_t eta_minute; ///< 0-59, 60=N/A (default)
} mavlink_ais_static_voyage_t;

#define MAVLINK_MSG_ID_AIS_STATIC_VOYAGE_LEN 67
#define MAVLINK_MSG_ID_202_LEN 67

#define MAVLINK_MSG_AIS_STATIC_VOYAGE_FIELD_CALLSIGN_LEN 7
#define MAVLINK_MSG_AIS_STATIC_VOYAGE_FIELD_VESSEL_NAME_LEN 20
#define MAVLINK_MSG_AIS_STATIC_VOYAGE_FIELD_DESTINATION_LEN 20

#define MAVLINK_MESSAGE_INFO_AIS_STATIC_VOYAGE { \
	"AIS_STATIC_VOYAGE", \
	15, \
	{  { "mmsi", NULL, MAVLINK_TYPE_UINT32_T, 0, 0, offsetof(mavlink_ais_static_voyage_t, mmsi) }, \
         { "imo", NULL, MAVLINK_TYPE_UINT32_T, 0, 4, offsetof(mavlink_ais_static_voyage_t, imo) }, \
         { "to_bow", NULL, MAVLINK_TYPE_UINT16_T, 0, 8, offsetof(mavlink_ais_static_voyage_t, to_bow) }, \
         { "to_stern", NULL, MAVLINK_TYPE_UINT16_T, 0, 10, offsetof(mavlink_ais_static_voyage_t, to_stern) }, \
         { "callSign", NULL, MAVLINK_TYPE_UINT8_T, 7, 12, offsetof(mavlink_ais_static_voyage_t, callSign) }, \
         { "vessel_name", NULL, MAVLINK_TYPE_UINT8_T, 20, 19, offsetof(mavlink_ais_static_voyage_t, vessel_name) }, \
         { "destination", NULL, MAVLINK_TYPE_UINT8_T, 20, 39, offsetof(mavlink_ais_static_voyage_t, destination) }, \
         { "ship_type", NULL, MAVLINK_TYPE_UINT8_T, 0, 59, offsetof(mavlink_ais_static_voyage_t, ship_type) }, \
         { "toPort", NULL, MAVLINK_TYPE_UINT8_T, 0, 60, offsetof(mavlink_ais_static_voyage_t, toPort) }, \
         { "to_starboard", NULL, MAVLINK_TYPE_UINT8_T, 0, 61, offsetof(mavlink_ais_static_voyage_t, to_starboard) }, \
         { "position_fix_type", NULL, MAVLINK_TYPE_UINT8_T, 0, 62, offsetof(mavlink_ais_static_voyage_t, position_fix_type) }, \
         { "eta_month", NULL, MAVLINK_TYPE_UINT8_T, 0, 63, offsetof(mavlink_ais_static_voyage_t, eta_month) }, \
         { "eta_day", NULL, MAVLINK_TYPE_UINT8_T, 0, 64, offsetof(mavlink_ais_static_voyage_t, eta_day) }, \
         { "eta_hour", NULL, MAVLINK_TYPE_UINT8_T, 0, 65, offsetof(mavlink_ais_static_voyage_t, eta_hour) }, \
         { "eta_minute", NULL, MAVLINK_TYPE_UINT8_T, 0, 66, offsetof(mavlink_ais_static_voyage_t, eta_minute) }, \
         } \
}


/**
 * @brief Pack a ais_static_voyage message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param mmsi mmsi identification
 * @param imo 
 * @param callSign 
 * @param vessel_name 
 * @param destination 
 * @param ship_type 
 * @param to_bow 
 * @param to_stern 
 * @param toPort 
 * @param to_starboard 
 * @param position_fix_type 
 * @param eta_month 1-12, 0=N/A (default)
 * @param eta_day 1-31, 0=N/A (default)
 * @param eta_hour 0-23, 24=N/A (default)
 * @param eta_minute 0-59, 60=N/A (default)
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_static_voyage_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
						       uint32_t mmsi, uint32_t imo, const uint8_t *callSign, const uint8_t *vessel_name, const uint8_t *destination, uint8_t ship_type, uint16_t to_bow, uint16_t to_stern, uint8_t toPort, uint8_t to_starboard, uint8_t position_fix_type, uint8_t eta_month, uint8_t eta_day, uint8_t eta_hour, uint8_t eta_minute)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[67];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_uint32_t(buf, 4, imo);
	_mav_put_uint16_t(buf, 8, to_bow);
	_mav_put_uint16_t(buf, 10, to_stern);
	_mav_put_uint8_t(buf, 59, ship_type);
	_mav_put_uint8_t(buf, 60, toPort);
	_mav_put_uint8_t(buf, 61, to_starboard);
	_mav_put_uint8_t(buf, 62, position_fix_type);
	_mav_put_uint8_t(buf, 63, eta_month);
	_mav_put_uint8_t(buf, 64, eta_day);
	_mav_put_uint8_t(buf, 65, eta_hour);
	_mav_put_uint8_t(buf, 66, eta_minute);
	_mav_put_uint8_t_array(buf, 12, callSign, 7);
	_mav_put_uint8_t_array(buf, 19, vessel_name, 20);
	_mav_put_uint8_t_array(buf, 39, destination, 20);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 67);
#else
	mavlink_ais_static_voyage_t packet;
	packet.mmsi = mmsi;
	packet.imo = imo;
	packet.to_bow = to_bow;
	packet.to_stern = to_stern;
	packet.ship_type = ship_type;
	packet.toPort = toPort;
	packet.to_starboard = to_starboard;
	packet.position_fix_type = position_fix_type;
	packet.eta_month = eta_month;
	packet.eta_day = eta_day;
	packet.eta_hour = eta_hour;
	packet.eta_minute = eta_minute;
	mav_array_memcpy(packet.callSign, callSign, sizeof(uint8_t)*7);
	mav_array_memcpy(packet.vessel_name, vessel_name, sizeof(uint8_t)*20);
	mav_array_memcpy(packet.destination, destination, sizeof(uint8_t)*20);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 67);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_STATIC_VOYAGE;
	return mavlink_finalize_message(msg, system_id, component_id, 67, 167);
}

/**
 * @brief Pack a ais_static_voyage message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message was sent over
 * @param msg The MAVLink message to compress the data into
 * @param mmsi mmsi identification
 * @param imo 
 * @param callSign 
 * @param vessel_name 
 * @param destination 
 * @param ship_type 
 * @param to_bow 
 * @param to_stern 
 * @param toPort 
 * @param to_starboard 
 * @param position_fix_type 
 * @param eta_month 1-12, 0=N/A (default)
 * @param eta_day 1-31, 0=N/A (default)
 * @param eta_hour 0-23, 24=N/A (default)
 * @param eta_minute 0-59, 60=N/A (default)
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_ais_static_voyage_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
							   mavlink_message_t* msg,
						           uint32_t mmsi,uint32_t imo,const uint8_t *callSign,const uint8_t *vessel_name,const uint8_t *destination,uint8_t ship_type,uint16_t to_bow,uint16_t to_stern,uint8_t toPort,uint8_t to_starboard,uint8_t position_fix_type,uint8_t eta_month,uint8_t eta_day,uint8_t eta_hour,uint8_t eta_minute)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[67];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_uint32_t(buf, 4, imo);
	_mav_put_uint16_t(buf, 8, to_bow);
	_mav_put_uint16_t(buf, 10, to_stern);
	_mav_put_uint8_t(buf, 59, ship_type);
	_mav_put_uint8_t(buf, 60, toPort);
	_mav_put_uint8_t(buf, 61, to_starboard);
	_mav_put_uint8_t(buf, 62, position_fix_type);
	_mav_put_uint8_t(buf, 63, eta_month);
	_mav_put_uint8_t(buf, 64, eta_day);
	_mav_put_uint8_t(buf, 65, eta_hour);
	_mav_put_uint8_t(buf, 66, eta_minute);
	_mav_put_uint8_t_array(buf, 12, callSign, 7);
	_mav_put_uint8_t_array(buf, 19, vessel_name, 20);
	_mav_put_uint8_t_array(buf, 39, destination, 20);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, 67);
#else
	mavlink_ais_static_voyage_t packet;
	packet.mmsi = mmsi;
	packet.imo = imo;
	packet.to_bow = to_bow;
	packet.to_stern = to_stern;
	packet.ship_type = ship_type;
	packet.toPort = toPort;
	packet.to_starboard = to_starboard;
	packet.position_fix_type = position_fix_type;
	packet.eta_month = eta_month;
	packet.eta_day = eta_day;
	packet.eta_hour = eta_hour;
	packet.eta_minute = eta_minute;
	mav_array_memcpy(packet.callSign, callSign, sizeof(uint8_t)*7);
	mav_array_memcpy(packet.vessel_name, vessel_name, sizeof(uint8_t)*20);
	mav_array_memcpy(packet.destination, destination, sizeof(uint8_t)*20);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, 67);
#endif

	msg->msgid = MAVLINK_MSG_ID_AIS_STATIC_VOYAGE;
	return mavlink_finalize_message_chan(msg, system_id, component_id, chan, 67, 167);
}

/**
 * @brief Encode a ais_static_voyage struct into a message
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param ais_static_voyage C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_ais_static_voyage_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_ais_static_voyage_t* ais_static_voyage)
{
	return mavlink_msg_ais_static_voyage_pack(system_id, component_id, msg, ais_static_voyage->mmsi, ais_static_voyage->imo, ais_static_voyage->callSign, ais_static_voyage->vessel_name, ais_static_voyage->destination, ais_static_voyage->ship_type, ais_static_voyage->to_bow, ais_static_voyage->to_stern, ais_static_voyage->toPort, ais_static_voyage->to_starboard, ais_static_voyage->position_fix_type, ais_static_voyage->eta_month, ais_static_voyage->eta_day, ais_static_voyage->eta_hour, ais_static_voyage->eta_minute);
}

/**
 * @brief Send a ais_static_voyage message
 * @param chan MAVLink channel to send the message
 *
 * @param mmsi mmsi identification
 * @param imo 
 * @param callSign 
 * @param vessel_name 
 * @param destination 
 * @param ship_type 
 * @param to_bow 
 * @param to_stern 
 * @param toPort 
 * @param to_starboard 
 * @param position_fix_type 
 * @param eta_month 1-12, 0=N/A (default)
 * @param eta_day 1-31, 0=N/A (default)
 * @param eta_hour 0-23, 24=N/A (default)
 * @param eta_minute 0-59, 60=N/A (default)
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_ais_static_voyage_send(mavlink_channel_t chan, uint32_t mmsi, uint32_t imo, const uint8_t *callSign, const uint8_t *vessel_name, const uint8_t *destination, uint8_t ship_type, uint16_t to_bow, uint16_t to_stern, uint8_t toPort, uint8_t to_starboard, uint8_t position_fix_type, uint8_t eta_month, uint8_t eta_day, uint8_t eta_hour, uint8_t eta_minute)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
	char buf[67];
	_mav_put_uint32_t(buf, 0, mmsi);
	_mav_put_uint32_t(buf, 4, imo);
	_mav_put_uint16_t(buf, 8, to_bow);
	_mav_put_uint16_t(buf, 10, to_stern);
	_mav_put_uint8_t(buf, 59, ship_type);
	_mav_put_uint8_t(buf, 60, toPort);
	_mav_put_uint8_t(buf, 61, to_starboard);
	_mav_put_uint8_t(buf, 62, position_fix_type);
	_mav_put_uint8_t(buf, 63, eta_month);
	_mav_put_uint8_t(buf, 64, eta_day);
	_mav_put_uint8_t(buf, 65, eta_hour);
	_mav_put_uint8_t(buf, 66, eta_minute);
	_mav_put_uint8_t_array(buf, 12, callSign, 7);
	_mav_put_uint8_t_array(buf, 19, vessel_name, 20);
	_mav_put_uint8_t_array(buf, 39, destination, 20);
	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_STATIC_VOYAGE, buf, 67, 167);
#else
	mavlink_ais_static_voyage_t packet;
	packet.mmsi = mmsi;
	packet.imo = imo;
	packet.to_bow = to_bow;
	packet.to_stern = to_stern;
	packet.ship_type = ship_type;
	packet.toPort = toPort;
	packet.to_starboard = to_starboard;
	packet.position_fix_type = position_fix_type;
	packet.eta_month = eta_month;
	packet.eta_day = eta_day;
	packet.eta_hour = eta_hour;
	packet.eta_minute = eta_minute;
	mav_array_memcpy(packet.callSign, callSign, sizeof(uint8_t)*7);
	mav_array_memcpy(packet.vessel_name, vessel_name, sizeof(uint8_t)*20);
	mav_array_memcpy(packet.destination, destination, sizeof(uint8_t)*20);
	_mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_AIS_STATIC_VOYAGE, (const char *)&packet, 67, 167);
#endif
}

#endif

// MESSAGE AIS_STATIC_VOYAGE UNPACKING


/**
 * @brief Get field mmsi from ais_static_voyage message
 *
 * @return mmsi identification
 */
static inline uint32_t mavlink_msg_ais_static_voyage_get_mmsi(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint32_t(msg,  0);
}

/**
 * @brief Get field imo from ais_static_voyage message
 *
 * @return 
 */
static inline uint32_t mavlink_msg_ais_static_voyage_get_imo(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint32_t(msg,  4);
}

/**
 * @brief Get field callSign from ais_static_voyage message
 *
 * @return 
 */
static inline uint16_t mavlink_msg_ais_static_voyage_get_callSign(const mavlink_message_t* msg, uint8_t *callSign)
{
	return _MAV_RETURN_uint8_t_array(msg, callSign, 7,  12);
}

/**
 * @brief Get field vessel_name from ais_static_voyage message
 *
 * @return 
 */
static inline uint16_t mavlink_msg_ais_static_voyage_get_vessel_name(const mavlink_message_t* msg, uint8_t *vessel_name)
{
	return _MAV_RETURN_uint8_t_array(msg, vessel_name, 20,  19);
}

/**
 * @brief Get field destination from ais_static_voyage message
 *
 * @return 
 */
static inline uint16_t mavlink_msg_ais_static_voyage_get_destination(const mavlink_message_t* msg, uint8_t *destination)
{
	return _MAV_RETURN_uint8_t_array(msg, destination, 20,  39);
}

/**
 * @brief Get field ship_type from ais_static_voyage message
 *
 * @return 
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_ship_type(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  59);
}

/**
 * @brief Get field to_bow from ais_static_voyage message
 *
 * @return 
 */
static inline uint16_t mavlink_msg_ais_static_voyage_get_to_bow(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint16_t(msg,  8);
}

/**
 * @brief Get field to_stern from ais_static_voyage message
 *
 * @return 
 */
static inline uint16_t mavlink_msg_ais_static_voyage_get_to_stern(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint16_t(msg,  10);
}

/**
 * @brief Get field toPort from ais_static_voyage message
 *
 * @return 
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_toPort(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  60);
}

/**
 * @brief Get field to_starboard from ais_static_voyage message
 *
 * @return 
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_to_starboard(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  61);
}

/**
 * @brief Get field position_fix_type from ais_static_voyage message
 *
 * @return 
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_position_fix_type(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  62);
}

/**
 * @brief Get field eta_month from ais_static_voyage message
 *
 * @return 1-12, 0=N/A (default)
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_eta_month(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  63);
}

/**
 * @brief Get field eta_day from ais_static_voyage message
 *
 * @return 1-31, 0=N/A (default)
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_eta_day(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  64);
}

/**
 * @brief Get field eta_hour from ais_static_voyage message
 *
 * @return 0-23, 24=N/A (default)
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_eta_hour(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  65);
}

/**
 * @brief Get field eta_minute from ais_static_voyage message
 *
 * @return 0-59, 60=N/A (default)
 */
static inline uint8_t mavlink_msg_ais_static_voyage_get_eta_minute(const mavlink_message_t* msg)
{
	return _MAV_RETURN_uint8_t(msg,  66);
}

/**
 * @brief Decode a ais_static_voyage message into a struct
 *
 * @param msg The message to decode
 * @param ais_static_voyage C-struct to decode the message contents into
 */
static inline void mavlink_msg_ais_static_voyage_decode(const mavlink_message_t* msg, mavlink_ais_static_voyage_t* ais_static_voyage)
{
#if MAVLINK_NEED_BYTE_SWAP
	ais_static_voyage->mmsi = mavlink_msg_ais_static_voyage_get_mmsi(msg);
	ais_static_voyage->imo = mavlink_msg_ais_static_voyage_get_imo(msg);
	ais_static_voyage->to_bow = mavlink_msg_ais_static_voyage_get_to_bow(msg);
	ais_static_voyage->to_stern = mavlink_msg_ais_static_voyage_get_to_stern(msg);
	mavlink_msg_ais_static_voyage_get_callSign(msg, ais_static_voyage->callSign);
	mavlink_msg_ais_static_voyage_get_vessel_name(msg, ais_static_voyage->vessel_name);
	mavlink_msg_ais_static_voyage_get_destination(msg, ais_static_voyage->destination);
	ais_static_voyage->ship_type = mavlink_msg_ais_static_voyage_get_ship_type(msg);
	ais_static_voyage->toPort = mavlink_msg_ais_static_voyage_get_toPort(msg);
	ais_static_voyage->to_starboard = mavlink_msg_ais_static_voyage_get_to_starboard(msg);
	ais_static_voyage->position_fix_type = mavlink_msg_ais_static_voyage_get_position_fix_type(msg);
	ais_static_voyage->eta_month = mavlink_msg_ais_static_voyage_get_eta_month(msg);
	ais_static_voyage->eta_day = mavlink_msg_ais_static_voyage_get_eta_day(msg);
	ais_static_voyage->eta_hour = mavlink_msg_ais_static_voyage_get_eta_hour(msg);
	ais_static_voyage->eta_minute = mavlink_msg_ais_static_voyage_get_eta_minute(msg);
#else
	memcpy(ais_static_voyage, _MAV_PAYLOAD(msg), 67);
#endif
}
