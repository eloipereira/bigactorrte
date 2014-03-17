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
#ifndef SYSTEM_EXCEPTION_H_
#define SYSTEM_EXCEPTION_H_
#include <cerrno>
#include <sstream>
#include <cstring>
#include <exception>
namespace Core
{

  class Exception : public std::exception
  {
  public:
    Exception()
    {
      std::ostringstream ss;
      ss << "Error: " << getSystemMessage();
      message = ss.str();
    }
    Exception(std::string customMessage)
    {
      std::ostringstream ss;
      ss << "Error: " << customMessage << " - " << getSystemMessage();
      message = ss.str();
    }
    virtual
    ~Exception() throw ()
    {
    }
    ;
    virtual const char*
    what() const throw ()
    {
      return message.c_str();
    }
    static std::string
    getSystemMessage()
    {
      std::ostringstream ss;
      ss << strerror(errno);
      return ss.str();

    }
    static int        getErrorNumber()
        {
          return errno;

        }

  private:
    std::string message;
  };

}
/* namespace Core */
#endif /* EXCEPTION_H_ */

