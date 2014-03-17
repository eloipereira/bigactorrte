/*
 * Utils.h
 *
 *  Created on: Nov 20, 2012
 *      Author: posilva
 */

#ifndef UTILS_H_
#define UTILS_H_
#include <vector>
#include <iostream>
#include <sstream>
#include <string>
#include <cmath>
#include <cstring>
#include <stdint.h>

#include <boost/crc.hpp>

#include <Piccolo/SDK/SDK.h>

#define GET_BITS(v,b,e)  ((v & (((1 << ((e - b) + 1)) - 1) << b)) >> b)
#define GET_BIT(v,b)  ((v & (((1 << 1) - 1) << b)) >> b)
#define SET_BIT(v,b) (v |= 1 << b)
#define UNSET_BIT(v,b) (v &= ~(1 <<  b))

namespace Piccolo {
namespace SDK {
class Utils {
public:
	Utils();
	virtual
	~Utils();
	static inline float groundSpeed(float vx, float vy, float vz) {
		return sqrt(vx * vx + vy * vy + vz * vz);
	}
	static inline bool isValidWaypoints(uint8_t value) {
		return value == 0;
	}
	static inline bool isDeleteWaypoints(uint8_t value) {
		return value == 1;
	}
	static inline bool isAllWaypoints(uint8_t value) {
		return value == 2;
	}
	static inline bool isWaypointsTransfer(uint8_t value) {
		return value == 2;
	}

	static inline bool

	isLeftTurn(bool value) {
		return value == 0;
	}
	static inline bool isRigthTurn(bool value) {
		return value == 1;
	}
	static inline float fromOrbitMult10(int value) {
		return value * 10;
	}
	static inline float fromOrbitMult50(int value) {
		return value * 50;
	}
	static inline float from8OfMToM(int value) {
		return value * .125;
	}

	static inline float fromTenOfSecToSec(int value) {
		return value / 10;
	}
	static inline float fromCmAGL(int value) {
		return normalize0To2PI(value / 100);
	}
	static inline float fromIAS(int value) {
		return fromCmPerSecToMPerSecTo((-2000 + value));
	}
	static inline int toIAS(float value) {
		return (2000 + value) * 100.0;
	}
	static inline float from10KUnit(int value) {
		return (value / 10000.0);
	}

	static inline float from10KRadToDeg(int value) {
		return from10KUnit(value) * 180 / M_PI;
	}
	static inline float normalize0To2PI(float value) {
		return value < 0 ? 360 + value : value;
	}
	static inline bool isON(uint8_t value) {
		return value == 1;
	}
	static inline bool isOFF(uint8_t value) {
		return value == 0;
	}
	static inline bool isAUTO(uint8_t value) {
		return value == 2;
	}
	static inline float fromCmPerSecToMPerSecTo(int value) {
		return value / 100.0;
	}
	static inline float fromMPerSecToCmPerSecTo(float value) {
		return value * 100.0;
	}

	static inline float fromAltitudeCMBelowWGS84(int value) {
		return value / 100.0 - 1000;
	}
	static inline int toAltitudeCMBelowWGS84(float value) {
		return value * 100 + 1000;
	}
	static inline float fromMilliArcSeconds(int value) {
		return value / 3600000.0;
	}
	static inline int toMilliArcSeconds(float value) {
		return value * 3600000;
	}
	static inline int strToInt(const std::string& s) {
		return strToInt(s.c_str());
	}
	static inline int strToInt(const char* s) {
		std::istringstream buffer(s);
		int value;
		buffer >> value;
		return value;
	}
	static inline bool isBigEndian() {
		int i = 1;
		char *p = (char *) &i;

		if (p[0] == 1)
			return false;
		else
			return true;
	}
	static inline float DegreestoRad(float degrees) {
		return degrees * M_PI / 180;
	}
	static inline uint16_t Int32toUCharA(int i, BYTE* buffer) {
		buffer[0] = (BYTE) (i >> 24);
		buffer[1] = (BYTE) (i >> 16);
		buffer[2] = (BYTE) (i >> 8);
		buffer[3] = (BYTE) (i /*>> 0*/);

		return 4;
	}

	static inline BYTE*
	Int32toUCharA(int i) {
		BYTE *result = new BYTE[4];
		result[0] = (BYTE) (i >> 24);
		result[1] = (BYTE) (i >> 16);
		result[2] = (BYTE) (i >> 8);
		result[3] = (BYTE) (i /*>> 0*/);

		return result;
	}

	static inline BYTE*
	FloattoUCharA(float i) {
		BYTE *buffer = new BYTE[4];

		size_t sz = sizeof(i);
		std::memcpy(buffer, &i, sz);

		if (!isBigEndian()) {
			BYTE *swap = new BYTE[4];
			for (unsigned int i = 0; i < sz; i++) {
				swap[i] = buffer[sz - 1 - i];
			}
			delete buffer;
			return swap;
		}

		return buffer;
	}
	static inline uint16_t ShorttoUCharA(short i, BYTE *buffer) {
		buffer[0] = (BYTE) (i >> 8);
		buffer[1] = (BYTE) (i /*>> 0*/);
		return 2;
	}
	static inline BYTE*
	ShorttoUCharA(short i) {
		BYTE *result = new BYTE[2];
		result[0] = (BYTE) (i >> 8);
		result[1] = (BYTE) (i /*>> 0*/);
		return result;
	}

	static inline unsigned short UChar2UShort(BYTE *value) {
		return (unsigned short) (((*value & 0xff) << 8) | (*(value + 1) & 0xff));
	}

	static inline unsigned short UChar2UShort(BYTE left, BYTE rigth) {
		return (unsigned short) (((left & 0xff) << 8) | (rigth & 0xff));
	}
	static inline short UChar2Short(BYTE left, BYTE rigth) {
		return (short) (((left & 0xff) << 8) | (rigth & 0xff));
	}

	static inline unsigned int UChar2UInt32(BYTE *value) {
		return (unsigned int) (((value[0] & 0xff) << 24)
				| ((value[1] & 0xff) << 16) | ((value[2] & 0xff) << 8)
				| (value[3] & 0xff));

	}
	static inline int UChar2Int32(BYTE *value) {
		return (int) (((value[0] & 0xff) << 24) | ((value[1] & 0xff) << 16)
				| ((value[2] & 0xff) << 8) | (value[3] & 0xff));
	}
	static inline short UChar2Int16(BYTE *value) {
		return (short) (((value[0] & 0xff) << 8) | (value[1] & 0xff));
	}
	static inline unsigned int UChar2Int24(BYTE *value) {
		return (unsigned int) (((value[0] & 0xff) << 16)
				| ((value[1] & 0xff) << 8) | (value[2] & 0xff));
	}
	static inline unsigned short CRC16(std::vector<BYTE>& packet, int size) {
		return CRC16(&packet[0], size);
	}

	static inline unsigned short CRC16(BYTE* a, int size) {
		boost::crc_16_type crc;
		crc.process_bytes(a, size);
		unsigned short crc_calculated = crc.checksum();
		return crc_calculated;
	}
	static inline BYTE CheckXOR(std::vector<BYTE>& packet, size_t size) {
		BYTE value = packet[0];
		for (size_t i = 1; i < size; ++i) {

			value = value ^ packet[i];
		}
		return (BYTE) (unsigned short) value;
	}
	static inline BYTE CheckXOR(BYTE * packet, size_t size) {
		BYTE value = packet[0];
		for (size_t i = 1; i < size; ++i) {
			value = value ^ packet[i];
		}
		return (BYTE) (unsigned short) value;
	}
	static inline std::ostream&
	out() {
		return std::cout << std::dec;
	}

	static inline unsigned createMask(unsigned start, unsigned end) {
		unsigned r = 0;
		for (unsigned i = start; i <= end; i++)
			r |= 1 << i;
		return r;
	}
	template<typename T>
	static inline T getBits(T value, uint8_t begin, uint8_t end) {
		return GET_BITS(value,begin,end);
	}

	template<typename T>
	static inline T getBitsR(T value, uint8_t begin, uint8_t end) {
		uint8_t size = (sizeof(T) * 8);
		uint8_t t = size - 1 - begin;
		begin = size - 1 - end;
		end = t;
		return GET_BITS(value,begin,end);
	}
	template<typename T>
	static inline bool getBit(T value, uint8_t bit) {
		return GET_BIT(value,bit);
	}
	template<typename T>
	static inline bool setBit(T value, uint8_t bit, bool set=true) {
		if(set)
			return SET_BIT(value,bit);
		else
			return UNSET_BIT(value,bit);
	}
	template<typename T>
	static inline bool getBitR(T value, uint8_t bit) {
		uint8_t size = (sizeof(T) * 8);
		bit = size - 1 - bit;
		return GET_BIT(value,bit);
	}
	template<typename T>
	static inline bool setBitR(T value, uint8_t bit, bool set=true) {
		uint8_t size = (sizeof(T) * 8);
		bit = size - 1 - bit;
		return SET_BIT(value,bit);if(set)
			return SET_BIT(value,bit);
		else
			return UNSET_BIT(value,bit);
	}
};

} /* namespace SDK */
} /* namespace Piccolo */
#endif /* UTILS_H_ */
