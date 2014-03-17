/*
 * AutopilotStream.h
 *
 *  Created on: Dec 13, 2012
 *      Author: posilva
 */

#ifndef AUTOPILOTSTREAM_H_
#define AUTOPILOTSTREAM_H_
#include <vector>
#include <Piccolo/SDK/SDK.h>
#include <Piccolo/SDK/Core/Packets/Stream.h>


namespace Piccolo {
    namespace SDK {
        namespace Core {
            namespace Packets {

                class AutopilotStream: public Stream {
                    public:
                        AutopilotStream();
                        virtual ~AutopilotStream();
                        void load(BYTE_VECTOR *payload);
                        BYTE_VECTOR& getPacket(unsigned short i);
                        unsigned short getNumberOfPackets();

                        static const int SYNC1 = 0x05;
                        static const int SYNC0 = 0xa0;
                    protected:
                        void parse(BYTE_VECTOR *payload);
                    private:
                        std::vector<BYTE_VECTOR> packets;
                };

            } /* namespace Packets */
        } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* AUTOPILOTSTREAM_H_ */
