// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: PiccoloSDK-Debug@build
// Date:    Apr 24, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: WaypointListPacket.h
// 
// ==========================================================================

#ifndef WAYPOINTLISTPACKET_H_
#define WAYPOINTLISTPACKET_H_
#include <Piccolo/SDK/SDK.h>
namespace Piccolo
{
  namespace SDK
  {
    namespace Core
    {
      namespace Packets
      {
        enum WaypointListActionsEnum
        {
          RequestValidWaypoints = 0,
          DeleteWaypoints = 1,
          RequestAllWaypoints = 2,
          InitiateWaypointsTransfer = 3,
        };
        class WaypointListPacket
        {
        public:
          WaypointListPacket();
          virtual
          ~WaypointListPacket();
          uint16_t
          toRaw(BYTE_VECTOR * payload);
          void
          load(BYTE_VECTOR * payload);
          std::string
          toString();
          std::vector<uint8_t>
          getActiveWaypoints();
          uint8_t
          getFlags() const
          {
            return flags;
          }

          void
          setFlags(uint8_t flags)
          {
            this->flags = flags;
          }

          const BYTE_VECTOR&
          getWaypoints0To103() const
          {
            return waypoints0To103;
          }

          void
          setWaypoints0To103(const BYTE_VECTOR& waypoints0To103)
          {
            this->waypoints0To103 = waypoints0To103;
          }

          const BYTE_VECTOR&
          getWaypoints103To249() const
          {
            return waypoints103To249;
          }

          void
          setWaypoints103To249(const BYTE_VECTOR& waypoints103To249)
          {
            this->waypoints103To249 = waypoints103To249;
          }
          uint16_t
          getVehicleId() const
          {
            return vehicleId;
          }

          void
          setVehicleId(uint16_t vehicleId)
          {
            this->vehicleId = vehicleId;
          }

        private:
          uint16_t vehicleId;
          BYTE_VECTOR waypoints0To103;
          uint8_t flags;
          BYTE_VECTOR waypoints103To249;
        };

      } /* namespace Packets */
    } /* namespace Core */
  } /* namespace SDK */
} /* namespace Piccolo */
#endif /* WAYPOINTLISTPACKET_H_ */
