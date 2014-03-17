/** @file
 *	@brief MAVLink comm protocol testsuite generated from rosvehicle.xml
 *	@see http://qgroundcontrol.org/mavlink/
 */
#ifndef ROSVEHICLE_TESTSUITE_H
#define ROSVEHICLE_TESTSUITE_H

#ifdef __cplusplus
extern "C" {
#endif

#ifndef MAVLINK_TEST_ALL
#define MAVLINK_TEST_ALL
static void mavlink_test_minimal(uint8_t, uint8_t, mavlink_message_t *last_msg);
static void mavlink_test_rosvehicle(uint8_t, uint8_t, mavlink_message_t *last_msg);

static void mavlink_test_all(uint8_t system_id, uint8_t component_id, mavlink_message_t *last_msg)
{
	mavlink_test_minimal(system_id, component_id, last_msg);
	mavlink_test_rosvehicle(system_id, component_id, last_msg);
}
#endif

#include "../minimal/testsuite.h"


static void mavlink_test_ais_position_report(uint8_t system_id, uint8_t component_id, mavlink_message_t *last_msg)
{
	mavlink_message_t msg;
        uint8_t buffer[MAVLINK_MAX_PACKET_LEN];
        uint16_t i;
	mavlink_ais_position_report_t packet_in = {
		963497464,
	45.0,
	73.0,
	101.0,
	129.0,
	157.0,
	18483,
	211,
	22,
	};
	mavlink_ais_position_report_t packet1, packet2;
        memset(&packet1, 0, sizeof(packet1));
        	packet1.mmsi = packet_in.mmsi;
        	packet1.sog = packet_in.sog;
        	packet1.cog = packet_in.cog;
        	packet1.longitude = packet_in.longitude;
        	packet1.latitude = packet_in.latitude;
        	packet1.heading = packet_in.heading;
        	packet1.timestamp = packet_in.timestamp;
        	packet1.navigation_status = packet_in.navigation_status;
        	packet1.rot = packet_in.rot;
        
        

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_position_report_encode(system_id, component_id, &msg, &packet1);
	mavlink_msg_ais_position_report_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_position_report_pack(system_id, component_id, &msg , packet1.mmsi , packet1.navigation_status , packet1.rot , packet1.sog , packet1.cog , packet1.longitude , packet1.latitude , packet1.heading , packet1.timestamp );
	mavlink_msg_ais_position_report_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_position_report_pack_chan(system_id, component_id, MAVLINK_COMM_0, &msg , packet1.mmsi , packet1.navigation_status , packet1.rot , packet1.sog , packet1.cog , packet1.longitude , packet1.latitude , packet1.heading , packet1.timestamp );
	mavlink_msg_ais_position_report_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
        mavlink_msg_to_send_buffer(buffer, &msg);
        for (i=0; i<mavlink_msg_get_send_buffer_length(&msg); i++) {
        	comm_send_ch(MAVLINK_COMM_0, buffer[i]);
        }
	mavlink_msg_ais_position_report_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
        
        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_position_report_send(MAVLINK_COMM_1 , packet1.mmsi , packet1.navigation_status , packet1.rot , packet1.sog , packet1.cog , packet1.longitude , packet1.latitude , packet1.heading , packet1.timestamp );
	mavlink_msg_ais_position_report_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
}

static void mavlink_test_ais_static_voyage(uint8_t system_id, uint8_t component_id, mavlink_message_t *last_msg)
{
	mavlink_message_t msg;
        uint8_t buffer[MAVLINK_MAX_PACKET_LEN];
        uint16_t i;
	mavlink_ais_static_voyage_t packet_in = {
		963497464,
	963497672,
	17651,
	17755,
	{ 41, 42, 43, 44, 45, 46, 47 },
	{ 254, 255, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 },
	{ 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77 },
	118,
	185,
	252,
	63,
	130,
	197,
	8,
	75,
	};
	mavlink_ais_static_voyage_t packet1, packet2;
        memset(&packet1, 0, sizeof(packet1));
        	packet1.mmsi = packet_in.mmsi;
        	packet1.imo = packet_in.imo;
        	packet1.to_bow = packet_in.to_bow;
        	packet1.to_stern = packet_in.to_stern;
        	packet1.ship_type = packet_in.ship_type;
        	packet1.toPort = packet_in.toPort;
        	packet1.to_starboard = packet_in.to_starboard;
        	packet1.position_fix_type = packet_in.position_fix_type;
        	packet1.eta_month = packet_in.eta_month;
        	packet1.eta_day = packet_in.eta_day;
        	packet1.eta_hour = packet_in.eta_hour;
        	packet1.eta_minute = packet_in.eta_minute;
        
        	mav_array_memcpy(packet1.callSign, packet_in.callSign, sizeof(uint8_t)*7);
        	mav_array_memcpy(packet1.vessel_name, packet_in.vessel_name, sizeof(uint8_t)*20);
        	mav_array_memcpy(packet1.destination, packet_in.destination, sizeof(uint8_t)*20);
        

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_static_voyage_encode(system_id, component_id, &msg, &packet1);
	mavlink_msg_ais_static_voyage_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_static_voyage_pack(system_id, component_id, &msg , packet1.mmsi , packet1.imo , packet1.callSign , packet1.vessel_name , packet1.destination , packet1.ship_type , packet1.to_bow , packet1.to_stern , packet1.toPort , packet1.to_starboard , packet1.position_fix_type , packet1.eta_month , packet1.eta_day , packet1.eta_hour , packet1.eta_minute );
	mavlink_msg_ais_static_voyage_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_static_voyage_pack_chan(system_id, component_id, MAVLINK_COMM_0, &msg , packet1.mmsi , packet1.imo , packet1.callSign , packet1.vessel_name , packet1.destination , packet1.ship_type , packet1.to_bow , packet1.to_stern , packet1.toPort , packet1.to_starboard , packet1.position_fix_type , packet1.eta_month , packet1.eta_day , packet1.eta_hour , packet1.eta_minute );
	mavlink_msg_ais_static_voyage_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
        mavlink_msg_to_send_buffer(buffer, &msg);
        for (i=0; i<mavlink_msg_get_send_buffer_length(&msg); i++) {
        	comm_send_ch(MAVLINK_COMM_0, buffer[i]);
        }
	mavlink_msg_ais_static_voyage_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
        
        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_static_voyage_send(MAVLINK_COMM_1 , packet1.mmsi , packet1.imo , packet1.callSign , packet1.vessel_name , packet1.destination , packet1.ship_type , packet1.to_bow , packet1.to_stern , packet1.toPort , packet1.to_starboard , packet1.position_fix_type , packet1.eta_month , packet1.eta_day , packet1.eta_hour , packet1.eta_minute );
	mavlink_msg_ais_static_voyage_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
}

static void mavlink_test_ais_status(uint8_t system_id, uint8_t component_id, mavlink_message_t *last_msg)
{
	mavlink_message_t msg;
        uint8_t buffer[MAVLINK_MAX_PACKET_LEN];
        uint16_t i;
	mavlink_ais_status_t packet_in = {
		5,
	72,
	};
	mavlink_ais_status_t packet1, packet2;
        memset(&packet1, 0, sizeof(packet1));
        	packet1.action = packet_in.action;
        	packet1.mode = packet_in.mode;
        
        

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_status_encode(system_id, component_id, &msg, &packet1);
	mavlink_msg_ais_status_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_status_pack(system_id, component_id, &msg , packet1.action , packet1.mode );
	mavlink_msg_ais_status_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_status_pack_chan(system_id, component_id, MAVLINK_COMM_0, &msg , packet1.action , packet1.mode );
	mavlink_msg_ais_status_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
        mavlink_msg_to_send_buffer(buffer, &msg);
        for (i=0; i<mavlink_msg_get_send_buffer_length(&msg); i++) {
        	comm_send_ch(MAVLINK_COMM_0, buffer[i]);
        }
	mavlink_msg_ais_status_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
        
        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_status_send(MAVLINK_COMM_1 , packet1.action , packet1.mode );
	mavlink_msg_ais_status_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
}

static void mavlink_test_ais_filter(uint8_t system_id, uint8_t component_id, mavlink_message_t *last_msg)
{
	mavlink_message_t msg;
        uint8_t buffer[MAVLINK_MAX_PACKET_LEN];
        uint16_t i;
	mavlink_ais_filter_t packet_in = {
		963497464,
	17,
	};
	mavlink_ais_filter_t packet1, packet2;
        memset(&packet1, 0, sizeof(packet1));
        	packet1.mmsi = packet_in.mmsi;
        	packet1.action = packet_in.action;
        
        

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_filter_encode(system_id, component_id, &msg, &packet1);
	mavlink_msg_ais_filter_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_filter_pack(system_id, component_id, &msg , packet1.action , packet1.mmsi );
	mavlink_msg_ais_filter_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_filter_pack_chan(system_id, component_id, MAVLINK_COMM_0, &msg , packet1.action , packet1.mmsi );
	mavlink_msg_ais_filter_decode(&msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);

        memset(&packet2, 0, sizeof(packet2));
        mavlink_msg_to_send_buffer(buffer, &msg);
        for (i=0; i<mavlink_msg_get_send_buffer_length(&msg); i++) {
        	comm_send_ch(MAVLINK_COMM_0, buffer[i]);
        }
	mavlink_msg_ais_filter_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
        
        memset(&packet2, 0, sizeof(packet2));
	mavlink_msg_ais_filter_send(MAVLINK_COMM_1 , packet1.action , packet1.mmsi );
	mavlink_msg_ais_filter_decode(last_msg, &packet2);
        MAVLINK_ASSERT(memcmp(&packet1, &packet2, sizeof(packet1)) == 0);
}

static void mavlink_test_rosvehicle(uint8_t system_id, uint8_t component_id, mavlink_message_t *last_msg)
{
	mavlink_test_ais_position_report(system_id, component_id, last_msg);
	mavlink_test_ais_static_voyage(system_id, component_id, last_msg);
	mavlink_test_ais_status(system_id, component_id, last_msg);
	mavlink_test_ais_filter(system_id, component_id, last_msg);
}

#ifdef __cplusplus
}
#endif // __cplusplus
#endif // ROSVEHICLE_TESTSUITE_H
