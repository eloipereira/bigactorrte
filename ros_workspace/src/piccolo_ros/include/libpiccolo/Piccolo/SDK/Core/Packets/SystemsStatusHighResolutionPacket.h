/*
 * SystemsStatusHighResolutionPacket.h
 *
 *  Created on: Nov 22, 2012
 *      Author: posilva
 */

#ifndef SYSTEMSSTATUSHIGHRESOLUTIONPACKET_H_
#define SYSTEMSSTATUSHIGHRESOLUTIONPACKET_H_
#include <stdint.h>
#include <Piccolo/SDK/Utils.h>
#include <Piccolo/SDK/SDK.h>

namespace Piccolo {
    namespace SDK {
        namespace Core {
            namespace Packets {

                class SystemsStatusHighResolutionPacket {
                    public:
                        SystemsStatusHighResolutionPacket();
                        virtual ~SystemsStatusHighResolutionPacket();
                        void load(BYTE_VECTOR* payload);

          bool
          isAerodynamicTermination() const
          {
            return aerodynamicTermination;
          }

          bool
          isAirBoundaryViolated() const
          {
            return airBoundaryViolated;
          }

          uint8_t
          getAltitudeCommand0() const
          {
            return altitudeCommand0;
          }

          bool
          isAutopilotEngineKill() const
          {
            return autopilotEngineKill;
          }

          bool
          isBadAnalogVoltage() const
          {
            return badAnalogVoltage;
          }

          bool
          isBadCpuVoltage() const
          {
            return badCPUVoltage;
          }

          bool
          isBadDigitalVoltage() const
          {
            return badDigitalVoltage;
          }

          bool
          isBadFirstStageVoltage() const
          {
            return badFirstStageVoltage;
          }

          bool
          isBadGpsVoltage() const
          {
            return badGPSVoltage;
          }

          int8_t
          getBoardTemperature() const
          {
            return boardTemperature;
          }

          bool
          isBrakesApplied() const
          {
            return brakesApplied;
          }

          bool
          isCommsTimeout() const
          {
            return commsTimeout;
          }

          uint8_t
          getCpuLoad() const
          {
            return cpuLoad;
          }

          bool
          isDeadmanOn() const
          {
            return deadmanOn;
          }

          bool
          isDropDeployed() const
          {
            return dropDeployed;
          }

          bool
          isEngineKillActive() const
          {
            return engineKillActive;
          }

          bool
          isExternalAgl() const
          {
            return externalAGL;
          }

          bool
          isExternalAirData() const
          {
            return externalAirData;
          }

          bool
          isExternalGps() const
          {
            return externalGPS;
          }

          bool
          isExternalImu() const
          {
            return externalIMU;
          }

          bool
          isExternalMagnetometer() const
          {
            return externalMagnetometer;
          }

          bool
          isFlightTimerElapsed() const
          {
            return flightTimerElapsed;
          }

          bool
          isFligthTermination() const
          {
            return fligthTermination;
          }

          bool
          isGpsTimeout() const
          {
            return GPSTimeout;
          }

          bool
          isLauchAction1() const
          {
            return lauchAction1;
          }

          bool
          isLauchAction2() const
          {
            return lauchAction2;
          }

          bool
          isLightsActive() const
          {
            return lightsActive;
          }

          uint16_t
          getMainCurrent() const
          {
            return mainCurrent;
          }

          uint16_t
          getMainVoltage() const
          {
            return mainVoltage;
          }

          bool
          isManualEngineKill() const
          {
            return manualEngineKill;
          }

          uint8_t
          getNumLoops() const
          {
            return numLoops;
          }

          bool
          isOperatorEngineKill() const
          {
            return operatorEngineKill;
          }

          bool
          isOrbiting() const
          {
            return orbiting;
          }

          int8_t
          getOrbitRadius() const
          {
            return orbitRadius;
          }

          bool
          isParachuteDeployed() const
          {
            return parachuteDeployed;
          }

          bool
          isParachutePendingRpm() const
          {
            return parachutePendingRPM;
          }

          int8_t
          getRssi() const
          {
            return rssi;
          }

          uint16_t
          getServoCurrent() const
          {
            return servoCurrent;
          }

          uint16_t
          getServoVoltage() const
          {
            return servoVoltage;
          }

          uint8_t
          getStatusLoop1() const
          {
            return statusLoop1;
          }

          uint8_t
          getStatusLoop2() const
          {
            return statusLoop2;
          }

          uint8_t
          getStatusLoop3() const
          {
            return statusLoop3;
          }

          uint8_t
          getStatusLoop4() const
          {
            return statusLoop4;
          }

          uint8_t
          getStatusLoop5() const
          {
            return statusLoop5;
          }

          uint8_t
          getStatusLoop6() const
          {
            return statusLoop6;
          }

          uint8_t
          getStatusLoop7() const
          {
            return statusLoop7;
          }

          uint8_t
          getStatusLoop8() const
          {
            return statusLoop8;
          }

          uint16_t
          getTimeToWp() const
          {
            return timeToWP;
          }

          uint8_t
          getTrackerStatus() const
          {
            return trackerStatus;
          }

          uint8_t
          getWaypointFrom() const
          {
            return waypointFrom;
          }

          uint8_t
          getWaypointTo() const
          {
            return waypointTo;
          }

	uint16_t getVehicleId() const {
		return vehicleId;
	}

	void setVehicleId(uint16_t vehicleId) {
		this->vehicleId = vehicleId;
	}

        private:
          	  	  	  	uint16_t vehicleId;
                        //! 0-2
                        uint16_t mainCurrent;
                        uint16_t mainVoltage;
                        //! 3-5
                        uint16_t servoCurrent;
                        uint16_t servoVoltage;
                        //! 6
                        bool badFirstStageVoltage;
                        bool badDigitalVoltage;
                        bool badAnalogVoltage;
                        bool badCPUVoltage;
                        bool badGPSVoltage;
                        int8_t boardTemperature;
                        //! 8
                        bool externalIMU;
                        bool externalGPS;
                        bool externalAirData;
                        bool externalMagnetometer;
                        bool externalAGL;
                        uint8_t altitudeCommand0;
                        //! 14
                        int8_t rssi;
                        //! 16-17
                        uint8_t statusLoop1;
                        uint8_t statusLoop2;
                        uint8_t statusLoop3;
                        uint8_t statusLoop4;
                        uint8_t statusLoop5;
                        uint8_t statusLoop6;
                        uint8_t statusLoop7;
                        uint8_t statusLoop8;
                        //! 20
                        uint8_t numLoops;
                        //! 22-23
                        bool airBoundaryViolated;
                        bool lauchAction1;
                        bool lauchAction2;
                        bool dropDeployed;
                        bool lightsActive;
                        bool engineKillActive;
                        bool parachuteDeployed;
                        bool parachutePendingRPM;
                        bool aerodynamicTermination;
                        bool brakesApplied;
                        //! 24 failure
                        bool fligthTermination;
                        bool deadmanOn;
                        bool GPSTimeout;
                        bool commsTimeout;
                        bool manualEngineKill;
                        bool autopilotEngineKill;
                        bool operatorEngineKill;
                        bool flightTimerElapsed;
                        //! 25
                        int8_t orbitRadius;
                        //! 26-27
                        uint8_t trackerStatus;
                        //! 28-29
                        bool orbiting;
                        uint16_t timeToWP;
                        //! 31
                        uint8_t cpuLoad;
                        //! 38
                        uint8_t waypointFrom;
                        //! 40
                        uint8_t waypointTo;


                };

            } /* namespace Packets */
        } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* SYSTEMSSTATUSHIGHRESOLUTIONPACKET_H_ */

