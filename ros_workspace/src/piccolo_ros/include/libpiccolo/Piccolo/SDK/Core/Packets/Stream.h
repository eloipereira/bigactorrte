/*
 * Stream.h
 *
 *  Created on: Dec 6, 2012
 *      Author: posilva
 */

#ifndef STREAM_H_
#define STREAM_H_
#include <Piccolo/SDK/SDK.h>
#include <Piccolo/SDK/Core/Packets/PacketConstants.h>
#include <Piccolo/SDK/Core/Packets/Packet.h>
namespace Piccolo {
namespace SDK {
namespace Core {
namespace Packets {

class Stream {
public:
	Stream();
	virtual ~Stream();
	Packet* getPacket();
	bool sendPacket(Packet*);
	virtual void load(BYTE_VECTOR *payload);

	BYTE_VECTOR*& getPayload()  {
		return payload;
	}

	BYTE getType() const {
		return type;
	}

protected:
	BYTE_VECTOR *payload;
	BYTE type;
};

} /* namespace Packets */
} /* namespace Core */
} /* namespace SDK */
} /* namespace Piccolo */
#endif /* STREAM_H_ */
