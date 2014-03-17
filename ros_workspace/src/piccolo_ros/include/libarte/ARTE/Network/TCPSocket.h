// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Date:                                                                    =
// Author: Pedro Marques da Silva                                           =
// -------------------------------------------------------------------------=
// Change Log:                                                              =
// -------------------------------------------------------------------------=
// Date       / Author              /Description                            =
// ==========================================================================
// Description:
// ==========================================================================
#ifndef TCPSERVER_H_
#define TCPSERVER_H_

#include <stdio.h>
#include <netinet/in.h>
#include <string>

#include <ARTE/Core/IOMultiplexer.h>
#include <ARTE/Network/Definitions.h>

class TCPSocket
{
public:
  TCPSocket();
  virtual
  ~TCPSocket();
  bool
  server(const int& port);
  bool
  connect(const std::string& host, const int& port);
  TCPSocket*
  accept();
  int
  readSocket(int socket, unsigned char* buffer, size_t size);
  int
  writeSocket(int socket, const unsigned char* buffer, size_t size);

  int
  read(unsigned char* buffer, size_t size);
  int
  write(const unsigned char* buffer, size_t size);

  void
  shutdown() throw ();

  bool
  isBlockingRead() const
  {
    return blocking_read_;
  }

  void
  setBlockingRead(bool blockingRead)
  {
    blocking_read_ = blockingRead;
  }

  int
  getIsServer() const
  {
    return is_server_;
  }

  int
  getPort() const
  {
    return port_;
  }

  void
  setPort(int port)
  {
    port_ = port;
  }

  bool
  isReuseaddress() const
  {
    return reuseaddress_;
  }

  void
  setReuseaddress(bool reuseaddress)
  {
    reuseaddress_ = reuseaddress;
  }

  const Address_t&
  getServerAddress() const
  {
    return serverAddress_;
  }

  void
  setServerAddress(const Address_t& serverAddress)
  {
    serverAddress_ = serverAddress;
  }

  void
  registerMultiplexer( Core::IOMultiplexer * iomux);
  void
  unregisterMultiplexer( Core::IOMultiplexer * iomux);
  bool
  poll( Core::IOMultiplexer * iomux,int timeout);
  bool
  isReady( Core::IOMultiplexer * iomux);

  int
  getSocket() const
  {
    return socket;
  }

protected:
  bool
  createSocket();
  bool
  bind();
  bool
  bind(const std::string& host);
  void
  listenSocket();

private:
  void handleSIGPIPE();
  void
  setupNonBlocking();

  void
  setupReuseAddress();

  int port_;
  int socket;
  Address_t serverAddress_;
  static const int c_back_log = 5;
  int is_server_;
  bool blocking_read_;
  bool reuseaddress_;

  Core::IOMultiplexer iomux_;
};

#endif /* TCPSERVER_H_ */
