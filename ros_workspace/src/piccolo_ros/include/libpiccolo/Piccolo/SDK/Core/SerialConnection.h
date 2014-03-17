/*
 * SerialConnection.h
 *
 *  Created on: Nov 29, 2012
 *      Author: posilva
 */

#ifndef SERIALCONNECTION_H_
#define SERIALCONNECTION_H_
#include <string.h>
#include <ARTE/SerialPort.h>
#include <Piccolo/SDK/Core/Connection.h>

namespace Piccolo {
namespace SDK {
namespace Core {
class SerialConnection: public Piccolo::SDK::Core::Connection {
public:

	SerialConnection(std::string device, unsigned int baudRate, bool non_blocking=true);
	virtual ~SerialConnection();
	virtual bool connect();
	virtual unsigned char read();
	virtual size_t read(unsigned char buffer[], size_t size);
	virtual size_t write(unsigned char buffer[], size_t size);

	unsigned int getBaudRate() const {
		return baudRate;
	}

	const std::string& getDevice() const {
		return device;
	}

	void setConnected(bool connected) {
		this->connected = connected;
	}

	virtual bool isConnected() const {
		return connected;
	}

private:
	unsigned int baudRate;
	std::string device;
	SerialPort *serial;
	bool connected;
	bool non_blocking_;
};
}
}
}
#endif /* SERIALCONNECTION_H_ */
