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
#ifndef SERIALPORT_H_
#define SERIALPORT_H_
#include <string>
//! POSIX Headers
#include <termios.h>
#include <map>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <ARTE/Core/Exception.h>
#include <ARTE/Core/IOMultiplexer.h>
using namespace std;
class SerialPort
{
public:
  enum Parity
  {
    //! No parity.
    SP_PARITY_NONE = 0x01,
    //! Even parity.
    SP_PARITY_EVEN = 0x02,
    //! Odd parity.
    SP_PARITY_ODD = 0x03
  };

  enum StopBits
  {
    //! One stop bit.
    SP_STOPBITS_1 = 0x04,
    //! One and half stop bits.
    SP_STOPBITS_1_5 = 0x05,
    //! Two stop bits.
    SP_STOPBITS_2 = 0x06
  };

  //! Data bits.
  enum DataBits
  {
    //! Five data bits.
    SP_DATABITS_5 = 0x07,
    //! Six data bits.
    SP_DATABITS_6 = 0x08,
    //! Seven data bits.
    SP_DATABITS_7 = 0x09,
    //! Eight data bits.
    SP_DATABITS_8 = 0x0A
  };

public:
  SerialPort();
  virtual
  ~SerialPort();
  int
  write(const char* bfr, int size);
  int
  write(const unsigned char* bfr, int size);
  int
  write(const char* bfr);
  int
  read(char* bfr, int size);
  int
  readString(char* bfr, int size);
  int
  read(unsigned char* bfr, int size);
  void
  flushInput();
  void
  flush(void);
  void
  flushOutput();
  void
  setParity(Parity parity);
  void
  setStopBits(StopBits stopbits);
  void
  setDataBits(DataBits databits);
  void
  setBaudRate(unsigned int baudrate);
  void
  setCTSRTS(bool value);
  void
  setXONXOFF(bool value);
  void
  setCanonicalInput(bool value);
  void
  setMinimumRead(int value);
  void
  setCanonicalInputTerminator(char terminator);
  void
  setNonBlocking();
  void setLowLatency(bool value);
  bool
  connect(const string& device, unsigned int baudrate = 9600,
      StopBits stopbits = SP_STOPBITS_1, Parity parity = SP_PARITY_NONE,
      DataBits databits = SP_DATABITS_8, bool block = false);
  void
   registerMultiplexer( Core::IOMultiplexer * iomux);
   void
   unregisterMultiplexer( Core::IOMultiplexer * iomux);
   bool
   poll( Core::IOMultiplexer * iomux,int timeout);
   bool
   isReady( Core::IOMultiplexer * iomux);

private:

  inline void
  applyAttributesNow(const char* error_msg)
  {

    int rv = tcsetattr(handle_, TCSANOW, &(options_));
    if (rv == -1)
      throw Core::Exception(error_msg);

  }
  int handle_;
  termios options_;

};

#endif /* SERIALPORT_H_ */
