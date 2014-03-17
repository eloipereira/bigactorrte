/*
 * AutopilotLoopPacket.h
 *
 *  Created on: Nov 21, 2012
 *      Author: posilva
 */

#ifndef WAYPOINTPACKET_H_
#define WAYPOINTPACKET_H_
#include <Piccolo/SDK/SDK.h>
namespace Piccolo
{
  namespace SDK
  {
    namespace Core
    {
      namespace Packets
      {

        class WaypointPacket
        {
        public:
          WaypointPacket();
          virtual
          ~WaypointPacket();
          uint16_t
          toRaw(BYTE_VECTOR * payload);
          void
          load(BYTE_VECTOR * payload);
          std::string
          toString();
          float_t
          getAltitude() const
          {
            return altitude;
          }

          bool
          isAltitudeToGround() const
          {
            return altitudeToGround;
          }

          uint8_t
          getAltLsb() const
          {
            return altLSB;
          }

          bool
          isCameraTarget() const
          {
            return cameraTarget;
          }

          bool
          isDeployDrop() const
          {
            return deployDrop;
          }

          bool
          isDeployParachute() const
          {
            return deployParachute;
          }

          bool
          isHoverPoint() const
          {
            return hoverPoint;
          }

          uint8_t
          getIndex() const
          {
            return index;
          }

          bool
          isLandingPoint() const
          {
            return landingPoint;
          }

          float_t
          getLatitude() const
          {
            return latitude;
          }

          bool
          isLightsOn() const
          {
            return lightsOn;
          }

          float_t
          getLongitude() const
          {
            return longitude;
          }

          uint8_t
          getNext() const
          {
            return next;
          }

          bool
          isOrbitAbove() const
          {
            return orbitAbove;
          }

          bool
          isOrbitBelow() const
          {
            return orbitBelow;
          }

          bool
          isOrbitDirection() const
          {
            return orbitDirection;
          }

          bool
          isOrbitMultiplier50() const
          {
            return orbitMultiplier50;
          }

          uint8_t
          getOrbitRadius() const
          {
            return orbitRadius;
          }

          bool
          isPreTurn() const
          {
            return preTurn;
          }

          bool
          isSlopeControl() const
          {
            return slopeControl;
          }

          uint8_t
          getUser() const
          {
            return user;
          }

          uint8_t
          getWindFind() const
          {
            return windFind;
          }

          uint8_t
          getOrbitTime() const
          {
            return orbitTime;
          }

          void
          setAltitude(uint16_t altitude)
          {
            this->altitude = altitude;
          }

          void
          setAltitudeToGround(bool altitudeToGround)
          {
            this->altitudeToGround = altitudeToGround;
          }

          void
          setAltLsb(uint8_t altLsb)
          {
            altLSB = altLsb;
          }

          void
          setCameraTarget(bool cameraTarget)
          {
            this->cameraTarget = cameraTarget;
          }

          void
          setDeployDrop(bool deployDrop)
          {
            this->deployDrop = deployDrop;
          }

          void
          setDeployParachute(bool deployParachute)
          {
            this->deployParachute = deployParachute;
          }

          void
          setHoverPoint(bool hoverPoint)
          {
            this->hoverPoint = hoverPoint;
          }

          void
          setIndex(uint8_t index)
          {
            this->index = index;
          }

          void
          setLandingPoint(bool landingPoint)
          {
            this->landingPoint = landingPoint;
          }

          void
          setLatitude(float_t latitude)
          {
            this->latitude = latitude;
          }

          void
          setLightsOn(bool lightsOn)
          {
            this->lightsOn = lightsOn;
          }

          void
          setLongitude(float_t longitude)
          {
            this->longitude = longitude;
          }

          void
          setNext(uint8_t next)
          {
            this->next = next;
          }

          void
          setOrbitAbove(bool orbitAbove)
          {
            this->orbitAbove = orbitAbove;
          }

          void
          setOrbitBelow(bool orbitBelow)
          {
            this->orbitBelow = orbitBelow;
          }

          void
          setOrbitDirection(bool orbitDirection)
          {
            this->orbitDirection = orbitDirection;
          }

          void
          setOrbitMultiplier50(bool orbitMultiplier50)
          {
            this->orbitMultiplier50 = orbitMultiplier50;
          }

          void
          setOrbitRadius(uint8_t orbitRadius)
          {
            this->orbitRadius = orbitRadius;
          }

          void
          setOrbitTime(uint8_t orbitTime)
          {
            this->orbitTime = orbitTime;
          }

          void
          setPreTurn(bool preTurn)
          {
            this->preTurn = preTurn;
          }

          void
          setSlopeControl(bool slopeControl)
          {
            this->slopeControl = slopeControl;
          }

          void
          setUser(uint8_t user)
          {
            this->user = user;
          }

          void
          setWindFind(uint8_t windFind)
          {
            this->windFind = windFind;
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

          float_t latitude;
          float_t longitude;
          //! flags 1
          bool deployParachute;
          bool deployDrop;
          bool orbitDirection;
          bool cameraTarget;
          bool landingPoint;
          bool slopeControl;
          bool lightsOn;
          bool preTurn;
          //! 9
          uint8_t orbitRadius;
          float altitude;
          uint8_t windFind;
          uint8_t orbitTime;
          uint8_t index;
          uint8_t next;
          uint8_t user;
          bool orbitAbove;
          bool orbitBelow;
          bool hoverPoint;
          bool altitudeToGround;
          bool orbitMultiplier50;
          uint8_t altLSB;

        };

      } /* namespace Packets */
    } /* namespace Core */
  } /* namespace SDK */
} /* namespace Piccolo */
#endif /* WAYPOINTPACKET_H_ */
