/*
 * AutopilotLoopPacket.h
 *
 *  Created on: Nov 21, 2012
 *      Author: posilva
 */

#ifndef TRACKPACKET_H_
#define TRACKPACKET_H_
#include <Piccolo/SDK/SDK.h>
namespace Piccolo {
    namespace SDK {
        namespace Core {
            namespace Packets {

                class TrackPacket {
                    public:
                        TrackPacket();
                        virtual ~TrackPacket();
                        BYTE_VECTOR* toRaw();
                        void load(BYTE_VECTOR * payload);

                        unsigned char getGoTo() const {
                            return go_to;
                        }

                        void setGoTo(unsigned char goTo) {
                            go_to = goTo;
                        }

                        unsigned char getTo() const {
                            return to;
                        }

                        void setTo(unsigned char to) {
                            this->to = to;
                        }

                    private:
                        unsigned char to;
                        unsigned char go_to;

                };

            } /* namespace Packets */
        } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* TRACKPACKET_H_ */
