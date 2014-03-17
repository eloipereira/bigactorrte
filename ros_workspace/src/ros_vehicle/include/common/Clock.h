/*
 * Clock.h
 *
 *  Created on: May 7, 2013
 *      Author: posilva
 */

#ifndef CLOCK_H_
#define CLOCK_H_
#include <ctime>
#include <stdint.h>
class Clock
{
public:
  virtual
  ~Clock();
  static inline uint64_t
  getTimeStamp()
  {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    uint64_t t = tv.tv_sec * (uint64_t)1000000 + tv.tv_usec;
    t /= 1000;
    return t;
    //return time(0) * 1000;
  }

private:
  Clock();
};

#endif /* CLOCK_H_ */
