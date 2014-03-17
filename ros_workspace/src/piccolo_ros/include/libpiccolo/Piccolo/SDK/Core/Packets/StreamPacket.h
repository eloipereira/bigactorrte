/*
 * StreamPacket.h
 *
 *  Created on: Nov 20, 2012
 *      Author: posilva
 */

#ifndef STREAMPACKET_H_
#define STREAMPACKET_H_
#include <vector>

namespace Piccolo {
    namespace SDK {
        namespace Packets {

            class StreamPacket {
                public:
                    class StreamPacketHeader {
                        public:
                            StreamPacketHeader();
                            StreamPacketHeader(std::vector<unsigned char>& payload);
                            virtual ~StreamPacketHeader();

                            unsigned short getAck() const {
                                return ack;
                            }

                            unsigned char getCheck() const {
                                return check;
                            }

                            void setCheck(unsigned char check) {
                                this->check = check;
                            }

                            unsigned short getDestination() const {
                                return destination;
                            }

                            unsigned char getFlags() const {
                                return flags;
                            }

                            unsigned short getSequence() const {
                                return sequence;
                            }

                            unsigned short getSize() const {
                                return size;
                            }

                            unsigned short getSource() const {
                                return source;
                            }

                            unsigned short getStream() const {
                                return stream;
                            }

                            void load(const std::vector<unsigned char>& payload);

                            bool isFrameTermination() const {
                                return frameTermination;
                            }

                            bool isPollingRequest() const {
                                return pollingRequest;
                            }



                        private:
                            unsigned short destination;
                            unsigned short source;
                            unsigned short ack;
                            unsigned short sequence;
                            unsigned short stream;
                            unsigned char flags;
                            unsigned short size;
                            unsigned char check;
                            bool pollingRequest;
                            bool frameTermination;
                    };
                    StreamPacket(std::vector<unsigned char> &payload);
                    virtual ~StreamPacket();

                    const StreamPacketHeader& getHeader() const {
                        return header;
                    }

                    std::vector<unsigned char>& getData()  {
                        return data;
                    }

                private:
                    StreamPacketHeader header;
                    std::vector<unsigned char> data;
                    unsigned short crc;

            };

        } /* namespace Packets */
    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* STREAMPACKET_H_ */
