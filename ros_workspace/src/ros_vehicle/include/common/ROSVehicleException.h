// ==========================================================================
// Copyright (C) 2013 Portuguese Air Force Academy                       =
// Research Center                                                          =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
// ==========================================================================
// Project: ros_vehicle-Debug@ros_vehicle
// Date:    9:56:14 AM                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: ROSVehicleException.h
// 
// ==========================================================================

#ifndef ROSVEHICLEEXCEPTION_H_
#define ROSVEHICLEEXCEPTION_H_
//! C99 Headers
#include <cerrno>
#include <cstdio>
#include <cstring>

#include <stdexcept>
#include <string>
#include <sstream>
/*
 *
 */

class ROSVehicleException:public std::runtime_error
{
private:
  std::string msg_;

public:
  explicit
  ROSVehicleException(const std::string& msg) :
      std::runtime_error(msg), msg_(msg)
  {
  }
  ;
  virtual
  ~ROSVehicleException() throw ()
  {
    std::stringstream s;
    s << "[" << this->msg_ << "]: " << strerror(errno);
  }
  ;
};

#endif /* ROSVEHICLEEXCEPTION_H_ */
