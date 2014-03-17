/*
 * Clock.h
 *
 *  Created on: May 14, 2013
 *      Author: posilva
 */

#ifndef CLOCK_H_
#define CLOCK_H_
#include <ctime>
#define NSEC_PER_SEC 1000000000u
#define NSEC_PER_USEC 1000u
#define NSEC_PER_MSEC 1000000u
#define NSEC_PER_SEC_FP 1000000000.0
class Clock {
public:

	static uint64_t getNanoSecs() {
		timespec ts;
		clock_gettime(CLOCK_MONOTONIC, &ts);
		return (uint64_t) ts.tv_sec * NSEC_PER_SEC + (uint64_t) ts.tv_nsec;
	}
	static uint64_t getMicroSecs() {
		return getNanoSecs() / NSEC_PER_USEC;
	}
	static uint64_t getMilliSecs() {
		return getNanoSecs() / NSEC_PER_MSEC;
	}
	static uint64_t getSecs() {
		return getNanoSecs() / NSEC_PER_SEC_FP;
	}
	static uint64_t getSinceEpochNanoSecs(void) {

		timespec ts;
		clock_gettime(CLOCK_REALTIME, &ts);
		return (uint64_t) ts.tv_sec * NSEC_PER_SEC + (uint64_t) ts.tv_nsec;

	}
	static uint64_t getSinceEpochMicroSecs() {
		return getSinceEpochNanoSecs() / NSEC_PER_USEC;
	}
	static uint64_t getSinceEpochMilliSecs() {
		return getSinceEpochNanoSecs() / NSEC_PER_MSEC;
	}
	static uint64_t getSinceEpochSecs() {
		return getSinceEpochNanoSecs() / NSEC_PER_SEC_FP;
	}

};

#endif /* CLOCK_H_ */

