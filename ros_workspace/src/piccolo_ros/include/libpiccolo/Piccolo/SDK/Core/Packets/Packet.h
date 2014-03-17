/*
 * Packet.h
 *
 *  Created on: Dec 6, 2012
 *      Author: posilva
 */

#ifndef PACKET_H_
#define PACKET_H_

namespace Piccolo {
namespace SDK {
namespace Core {
namespace Packets {

class Packet {
public:
	Packet();
	virtual ~Packet();
	virtual void load(BYTE_VECTOR*,size_t)=0;
};

} /* namespace Packets */
} /* namespace Core */
} /* namespace SDK */
} /* namespace Piccolo */

inline Piccolo::SDK::Core::Packets::Packet::Packet() {
}

inline Piccolo::SDK::Core::Packets::Packet::~Packet() {
}


#endif /* PACKET_H_ */
