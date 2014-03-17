/*
 * Server.h
 *
 *  Created on: May 24, 2013
 *      Author: posilva
 */

#ifndef SERVER_H_
#define SERVER_H_
#include <vector>
#include <ARTE/Core/IOMultiplexer.h>
#include <ARTE/Network/TCPSocket.h>
#include <ARTE/Core/Client.h>

class Server {
public:
	Server();
	virtual ~Server();
	bool start(int port);

	const std::vector<Client>& getClients() const {
		return clients_;
	}
private:
	Core::IOMultiplexer iomux_;
	std::vector<Client> clients_;
	TCPSocket server_socket_;
};

#endif /* SERVER_H_ */
