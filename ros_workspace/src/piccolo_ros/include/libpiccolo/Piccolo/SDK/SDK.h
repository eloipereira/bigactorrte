/*
 * SDH.hpp
 *
 *  Created on: Dec 6, 2012
 *      Author: posilva
 */

#ifndef SDH_HPP_
#define SDH_HPP_
#include <stdint.h>
#include <ctype.h>
#include <map>
#include <string>
#include <vector>
typedef void (*POINTER2TEL_HANDLER_FUNCTION_T)(void *);
typedef std::map<std::string,std::string> PARAMETERS_T;
typedef std::map<std::string,POINTER2TEL_HANDLER_FUNCTION_T> FUNCTIONS_MAP_T;
typedef unsigned char BYTE;
typedef unsigned char CHECKSUM;
typedef unsigned short CRC16;
typedef std::vector<BYTE> BYTE_VECTOR;




#endif /* SDH_HPP_ */
