/*
 * PacketConstants.h
 *
 *  Created on: Nov 20, 2012
 *      Author: posilva
 */

#ifndef PACKETCONSTANTS_H_
#define PACKETCONSTANTS_H_

namespace Piccolo {
    namespace SDK {
    namespace Core {
        namespace Packets {

            enum StreamType {
                POLLING_STREAM = 0, DGPS_STREAM, PILOT_STREAM, AUTOPILOT_STREAM, CAN_STREAM, GIMBAL_STREAM, PAYLOAD_STREAM, PAYLOAD2_STREAM, DEBUG_STREAM,NUM_STREAMS
            };
            enum AutopilotStreamPacketType{
                                WAYPOINT=8,
                                WAYPOINT_LIST=9,
                                TRACK=10,
                                AUTOPILOT_LOOP=24,
                                LINK_BRIDGE=63,
                                TELEMETRY_HI_RES=69,
                                TELEMETRY_LO_RES=70,
                                STATUS_HI_RES
                            };
            /**
             *
             */
            static const unsigned char STREAM_SYNC1 = (unsigned char) 0x5a;
            static const unsigned char STREAM_SYNC2 = (unsigned char) 0xa5;
        } /* namespace Packets */
    } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* PACKETCONSTANTS_H_ */

