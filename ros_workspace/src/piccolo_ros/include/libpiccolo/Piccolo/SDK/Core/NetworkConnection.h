/*
 * NetworkConnection.h
 *
 *  Created on: Nov 19, 2012
 *      Author: posilva
 */

#ifndef NETWORKCONNECTION_H_
#define NETWORKCONNECTION_H_
#include <string>
#include <ARTE/Network/TCPSocket.h>
#include <Piccolo/SDK/Core/Connection.h>

using namespace std;
namespace Piccolo {
    namespace SDK {
        namespace Core {
            class NetworkConnection: public Piccolo::SDK::Core::Connection {
                public:
                    NetworkConnection(string host, int port,bool non_blocking=false);
                    virtual ~NetworkConnection();
                    virtual bool connect() ;
                    virtual unsigned char read();
                    virtual size_t read(unsigned char buffer[], size_t size);
                    virtual size_t write(unsigned char buffer[], size_t size);

                    const string& getHost() const {
                        return host;
                    }

                    void setHost(const string& host) {
                        this->host = host;
                    }

                    const int& getPort() const {
                        return port;
                    }

                    void setPort(const int& port) {
                        this->port = port;
                    }

                    TCPSocket*& getSocket()  {
                        return socket;
                    }

                    void setSocket( TCPSocket*& socket) {
                        this->socket = socket;
                    }
                    inline bool isConnected()const{
                        return socket->getSocket()>0;
                    }

                private:

                    TCPSocket* socket;
                    string host;
                    int port;



        void
        initConnection(string host, int port, bool non_blocking);
      };

        }
    }
}
#endif /* NETWORKCONNECTION_H_ */
