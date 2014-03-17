/*
 * UDPSocket.h
 *
 *  Created on: Jan 3, 2013
 *      Author: posilva
 */

#ifndef UDPSOCKET_H_
#define UDPSOCKET_H_

// C stdlibs
#include <cstddef>

#include <sys/types.h>
#include <sys/socket.h>

#include <netinet/in.h>

#include <unistd.h>
#include <arpa/inet.h>
#include <cstring>
#include <string>

#include <stdio.h>

#include <ARTE/Network/Definitions.h>
class UDPSocket
{
public:
  UDPSocket();
  virtual
  ~UDPSocket();
  bool
  server(const int& port);
  bool
  broadcast(const int& port);
  bool
  connect(const std::string& host, const int& port);
  int
  receiveData(char* buffer, size_t size);
  int
  sendData(const char* buffer, size_t size);
  void
  setNonBlocking(const bool b);
  void
  shutdown();
protected:
  bool
  createSocket();
  bool
  bindToPort();
  bool
  setupBroadcast();
  bool
  bindToHostPort(const std::string& host);
private:
  bool
  enableBroadcast(const int& socket);
  bool
  disableBroadcast();
  bool
  createBroadcastAddress(int port);

  int port_;
  int socket_;
  Address_t serverAddress_;
  static const int c_back_log = 5;
  int is_server_;
  bool blocking_read_;
  bool is_async;
};

#endif /* UDPSOCKET_H_ */
