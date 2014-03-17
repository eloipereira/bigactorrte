/*
 * TelemetryHighResolutionPacket.h
 *
 *  Created on: Nov 21, 2012
 *      Author: posilva
 */

#ifndef TELEMETRYHIGHRESOLUTIONPACKET_H_
#define TELEMETRYHIGHRESOLUTIONPACKET_H_
#include <bitset>
#include <vector>
#include <Piccolo/SDK/SDK.h>
#include <Piccolo/SDK/Utils.h>

namespace Piccolo {
namespace SDK {
namespace Core {
namespace Packets {

class TelemetryHighResolutionPacket {
public:
	TelemetryHighResolutionPacket();
	virtual ~TelemetryHighResolutionPacket();
	void load(BYTE_VECTOR* payload);

	short getAccelX() const {
		return accelX;
	}

	short getAccelY() const {
		return accelY;
	}

	short getAccelZ() const {
		return accelZ;
	}

	unsigned short getAgl() const {
		return agl;
	}
	bool isAglAltitudeTooLow() const {
		return Utils::getBitR(limits, 9);
	}

	bool isAglFromLaserSensor() const {
		return Utils::getBitR(dataFlags, 6);
	}

	bool isAglIncluded() const {
		return Utils::getBitR(dataFlags, 4);
	}

	bool isIAISTooHigh() const {
		return Utils::getBitR(limits, 3);
	}

	bool isIASTooLow() const {
		return Utils::getBitR(limits, 2);
	}

	bool isAltitudeTooHigh() const {
		return Utils::getBitR(limits, 1);
	}
	bool isAltitudeTooLow() const {
		return Utils::getBitR(limits, 0);
	}

	short getBarometricAltitude() const {
		return barometricAltitude;

	}
	bool isCalculatorSensorDataIncluded() const {
		return Utils::getBitR(dataFlags, 1);
	}
	bool isEngineRpmTooHigh() const {
		return Utils::getBitR(limits, 7);
	}

	bool isEngineRpmTooLow() const {
		return Utils::getBitR(limits, 6);
	}

	bool isFuelIncluded() const {
		return Utils::getBitR(dataFlags, 5);
	}

	bool isGpsIncluded() const {
		return Utils::getBitR(dataFlags, 0);
	}

	float getHeight() const {
		return height;
	}

	unsigned short getIas() const {
		return ias;
	}

	float getLatitude() const {
		return latitude;
	}

	unsigned short getLeftRpm() const {
		return leftRPM;
	}

	float getLongitude() const {
		return longitude;
	}

	bool isMagDataIncluded() const {
		return Utils::getBitR(dataFlags, 3);
	}

	unsigned short getNumberOfActuatorsIncluded() const {
		return numberOfActuatorsIncluded;
	}

	short getPitch() const {
		return pitch;
	}

	bool isPitchTooLarge() const {
		return Utils::getBitR(limits, 5);
	}

	bool isRawSensorDataIncluded() const {
		return Utils::getBitR(dataFlags, 2);
	}

	unsigned short getRightRpm() const {
		return rightRPM;
	}

	short getRoll() const {
		return roll;
	}

	bool isRollAngleTooLarge() const {
		return Utils::getBitR(limits, 4);
	}

	unsigned short getStaticPressure() const {
		return staticPressure;
	}

	unsigned int getTime() const {
		return time;
	}

	short getDown() const {
		return vDown;
	}

	short getEast() const {
		return vEast;
	}

	short getNorth() const {
		return vNorth;
	}

	bool isWindsExcessive() const {
		return Utils::getBitR(limits, 8);
	}

	short getWindSouth() const {
		return windSouth;
	}

	short getWindWest() const {
		return windWest;
	}

	float getYaw() const {
		return yaw;
	}

	float getHeading() const {
		return heading;
	}

	unsigned short getSourceId() const {
		return sourceId;
	}

	void setSourceId(unsigned short sourceId) {
		this->sourceId = sourceId;
	}

	unsigned int getGpsTimeOfWeek() const {
		return gpsTimeOfWeek;
	}

	unsigned short getGpsWeek() const {
		return gpsWeek;
	}

private:
	unsigned short sourceId;
	unsigned short numberOfActuatorsIncluded;
	unsigned short dataFlags;
	unsigned short limits;
	unsigned int time;
	float latitude;
	float longitude;
	float height;
	short vNorth;
	short vEast;
	short vDown;
	short roll;
	short pitch;
	float yaw;
	short barometricAltitude;
	short windSouth;
	short windWest;
	unsigned short leftRPM;
	unsigned short rightRPM;
	unsigned short ias;
	unsigned short staticPressure;
	short accelX;
	short accelY;
	short accelZ;
	unsigned short agl;
	unsigned short heading;
	unsigned short gpsWeek;
	unsigned int gpsTimeOfWeek;

};

} /* namespace Packets */
} /* namespace Core */
} /* namespace SDK */
} /* namespace Piccolo */
#endif /* TELEMETRYHIGHRESOLUTIONPACKET_H_ */
