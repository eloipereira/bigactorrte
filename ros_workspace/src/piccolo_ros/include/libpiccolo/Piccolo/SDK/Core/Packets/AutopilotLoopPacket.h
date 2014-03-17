/*
 * AutopilotLoopPacket.h
 *
 *  Created on: Nov 21, 2012
 *      Author: posilva
 */

#ifndef AUTOPILOTLOOPPACKET_H_
#define AUTOPILOTLOOPPACKET_H_
#include <Piccolo/SDK/SDK.h>
namespace Piccolo {
    namespace SDK {
        namespace Core {
            namespace Packets {

                class AutopilotLoopPacket {
                    public:
                        AutopilotLoopPacket();
                        virtual ~AutopilotLoopPacket();
                        BYTE_VECTOR* toRaw();
                        void load(BYTE_VECTOR * payload);
                        unsigned char getControl() const {
                            return control;
                        }

                        void setControl(unsigned char control) {
                            this->control = control;
                        }

                        unsigned char getLoop() const {
                            return loop;
                        }

                        void setLoop(unsigned char loop) {
                            this->loop = loop;
                        }

                        unsigned char getReserved1() const {
                            return reserved1;
                        }

                        void setReserved1(unsigned char reserved1) {
                            this->reserved1 = reserved1;
                        }

                        unsigned char getReserved2() const {
                            return reserved2;
                        }

                        void setReserved2(unsigned char reserved2) {
                            this->reserved2 = reserved2;
                        }

                        unsigned char getUpdateEe() const {
                            return updateEE;
                        }

                        void setUpdateEe(unsigned char updateEe) {
                            updateEE = updateEe;
                        }

                        float getValue() const {
                            return value;
                        }

                        void setValue(float value) {
                            this->value = value;
                        }

                    private:
                        unsigned char loop;
                        unsigned char control;
                        unsigned char reserved1;
                        unsigned char reserved2;
                        float value;
                        unsigned char updateEE;

                };

            } /* namespace Packets */
        } /* namespace Core */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* AUTOPILOTLOOPPACKET_H_ */
