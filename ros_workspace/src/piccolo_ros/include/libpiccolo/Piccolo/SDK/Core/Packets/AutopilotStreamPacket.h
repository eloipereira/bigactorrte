/*
 * AutopilotStreamPacket.h
 *
 *  Created on: Dec 13, 2012
 *      Author: posilva
 */

#ifndef AUTOPILOTSTREAMPACKET_H_
#define AUTOPILOTSTREAMPACKET_H_
#include <Piccolo/SDK/SDK.h>
namespace Piccolo {
    namespace SDK {
        namespace Core {
            namespace Packets {

                class AutopilotStreamPacket {
                    public:
                        AutopilotStreamPacket();
                        virtual ~AutopilotStreamPacket();
                        void load(BYTE_VECTOR* payload);

                        CRC16 getCrc() const {
                            return crc;
                        }

                        BYTE_VECTOR*& getPayload()  {
                            return payload;
                        }

                        BYTE getSize() const {
                            return size;
                        }

                        BYTE getSync0() const {
                            return sync0;
                        }

                        BYTE getSync1() const {
                            return sync1;
                        }

                        BYTE getType() const {
                            return type;
                        }

                    private:
                        BYTE sync0;
                        BYTE sync1;
                        BYTE type;
                        BYTE size;
                        BYTE_VECTOR *payload;
                        CRC16 crc;
                };

            } /* namespace Packets */
        } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* AUTOPILOTSTREAMPACKET_H_ */

