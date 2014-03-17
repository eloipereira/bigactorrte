/*
 * Connection.h
 *
 *  Created on: Nov 19, 2012
 *      Author: posilva
 */

#ifndef CONNECTION_H_
#define CONNECTION_H_
#include<cstdlib>
#include <ARTE/Core/IOMultiplexer.h>
namespace Piccolo {
    namespace SDK {
        namespace Core {
            class Connection {
                public:
                    Connection();
                    virtual ~Connection();
                    virtual bool connect() =0;
                    virtual unsigned char read() =0;
                    virtual size_t read(unsigned char buffer[], size_t size)=0 ;
                    virtual size_t write(unsigned char buffer[], size_t size)=0;
                    virtual bool isConnected()const=0;
                protected:
                    ::Core::IOMultiplexer *iomux;
            };
        }
    }
}
#endif /* CONNECTION_H_ */
