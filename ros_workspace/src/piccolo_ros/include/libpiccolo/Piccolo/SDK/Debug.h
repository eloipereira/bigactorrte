/*
 * Debug.h
 *
 *  Created on: Nov 20, 2012
 *      Author: posilva
 */

#ifndef DEBUG_H_
#define DEBUG_H_
#include <vector>
#include <string>
#include <sstream>
#include <iostream>
#include <boost/crc.hpp>
#include <boost/lexical_cast.hpp>
namespace Piccolo {
    namespace SDK {

            class Debug {
                public:
                    Debug ();
                    virtual ~Debug ();
                    static inline std::string toString (std::vector<unsigned char> &data  ){
                        std::stringstream sstream ;
                        for (unsigned int i = 0; i < data.size(); ++i) {
                            sstream<< std::hex<< data[i];
                        }
                        return sstream.str();
                    }
            };

    } /* namespace SDK */
} /* namespace Piccolo */
#endif /* UTILS_H_ */
