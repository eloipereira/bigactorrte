/*
 * CommunicationManager.h
 *
 *  Created on: Dec 6, 2012
 *      Author: posilva
 */

#ifndef COMMUNICATIONMANAGER_H_
#define COMMUNICATIONMANAGER_H_
#include <Piccolo/SDK/SDK.h>
#include <Piccolo/SDK/Core/Connection.h>
#include <Piccolo/SDK/Core/Packets/Stream.h>
#include <Piccolo/SDK/Core/Packets/AutopilotStream.h>
#include <Piccolo/SDK/Core/Packets/PayloadStream.h>
#include <Piccolo/SDK/Core/Packets/PacketConstants.h>
#include <Piccolo/SDK/Core/Packets/Packets.h>

namespace Piccolo
{
  namespace SDK
  {
    namespace Core
    {
      enum ConnectionType
      {
        SERIAL = 0, SOCKET = 1
      };
      class CommunicationManager
      {
      public:
        CommunicationManager(ConnectionType connType, PARAMETERS_T params);
        virtual
        ~CommunicationManager();
        void
        init();
        Piccolo::SDK::Core::Packets::Stream*
        getStream();
        Piccolo::SDK::Core::Packets::AutopilotStream*
        getAutopilotStream();
        Piccolo::SDK::Core::Packets::Stream*
        getGimbalStream();
        Piccolo::SDK::Core::Packets::PayloadStream*
        getPayloadStream();
        Piccolo::SDK::Core::Packets::Stream*
        getPayload2Stream();
        Piccolo::SDK::Core::Packets::Stream*
        getCANStream();
        bool
        getStream(const Piccolo::SDK::Core::Packets::StreamType& stream,
            BYTE_VECTOR& payload);
        bool
        getStreams(
            std::vector<Piccolo::SDK::Core::Packets::StreamType>& streams,
            BYTE_VECTOR& payload);
        bool
        SendPayloadPacket(BYTE_VECTOR *data);
        bool
        SendAutopilotCommandPacket(BYTE loop, float value, BYTE control = 1,
            bool persistEE = false);
        bool
        SendTrackPacket(BYTE to, BYTE go_to);
        bool
        SendWaypointListPacket(
            Piccolo::SDK::Core::Packets::WaypointListPacket& pkt);
        bool
        SendWaypointPacket(Piccolo::SDK::Core::Packets::WaypointPacket &pkt);
        bool
        SendData(BYTE * data, size_t size);
        void
        registerTelemetryHandler(POINTER2TEL_HANDLER_FUNCTION_T);
        void
        runStream();
        /**
         * Getters and Setters
         */
        unsigned short
        getAddress() const
        {
          return address;
        }

        void
        setAddress(unsigned short address)
        {
          this->address = address;
        }

        unsigned short
        getRemoteAddress() const
        {
          return remoteAddress;
        }

        void
        setRemoteAddress(unsigned short remoteAddress)
        {
          this->remoteAddress = remoteAddress;
        }

        bool
        SendAutopilotStreamPacket(uint8_t type, BYTE_VECTOR* datac);

      protected:
        BYTE_VECTOR *
        parse();
        bool
        parse(BYTE_VECTOR* packet);

        BYTE_VECTOR *
        createStreamPacket(unsigned short source, unsigned short destination,
            BYTE streamType, BYTE_VECTOR *data);
        BYTE_VECTOR *
        createStreamPacket(BYTE type, BYTE_VECTOR *data);
        BYTE_VECTOR *
        createAutopilotPacket(BYTE type, BYTE_VECTOR *data);
        void
        handleAutopilotStream(BYTE_VECTOR *payload);

      private:
        ConnectionType connectionType;
        PARAMETERS_T parameters;
        Piccolo::SDK::Core::Connection *connection;
        unsigned short address;
        unsigned short remoteAddress;
        FUNCTIONS_MAP_T packetHandlers;
        bool selectedStreams[Piccolo::SDK::Core::Packets::NUM_STREAMS];

        void
        resetSelectedStreams();
        void
        selectStreams(
            std::vector<Piccolo::SDK::Core::Packets::StreamType>& streams);
      };
    }
  }
}
#endif /* COMMUNICATIONMANAGER_H_ */
