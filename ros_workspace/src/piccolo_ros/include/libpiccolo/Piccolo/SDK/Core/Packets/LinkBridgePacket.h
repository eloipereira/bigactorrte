/*
 * AutopilotLoopPacket.h
 *
 *  Created on: Nov 21, 2012
 *      Author: posilva
 */

#ifndef LinkBridgePacket_H_
#define LinkBridgePacket_H_
#include <Piccolo/SDK/SDK.h>
namespace Piccolo {
    namespace SDK {
        namespace Core {
            namespace Packets {

                class LinkBridgePacket {
                    public:
                        LinkBridgePacket();
                        virtual ~LinkBridgePacket();
                        BYTE_VECTOR* toRaw();
                        void load(BYTE_VECTOR * payload);

                        BYTE getLinkIndex() const {
                            return linkIndex;
                        }

                        void setLinkIndex(BYTE linkIndex) {
                            this->linkIndex = linkIndex;
                        }

                        const BYTE_VECTOR& getUserData() const {
                            return userData;
                        }

                        void setUserData(const BYTE_VECTOR& userData) {
                            this->userData = userData;
                        }
                        static const int INTERNAL_RADIO_LINK = 0;
                        static const int COM2 = 1;
                        static const int COM1 = 2;
                        static const int COM3 = 3;
                        static const int COM4 = 4;
                        static const int COM5 = 5;
                    private:
                        BYTE linkIndex;
                        BYTE_VECTOR userData;

                };

            } /* namespace Packets */
        } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* LinkBridgePacket_H_ */
