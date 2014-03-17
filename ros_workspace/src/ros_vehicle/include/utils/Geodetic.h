// ==========================================================================
// Copyright (C) 2013 Força Aérea Portuguesa - Academia                     =
// Centro de Investigação da Academiafa da Força Aérea                      =
// Granja do Marques, Academia, Pero-Pinheiro                               =
// ==========================================================================
// Project: FLIR_CTRL-Debug@build
// Date:    May 8, 2013                                
// Author:  posilva                                
// -------------------------------------------------------------------------=
// Change Log:                                                         
// -------------------------------------------------------------------------=
// Date       / Author              /Description                          
// ==========================================================================
// Description: Geodetic.h
// 
// ==========================================================================

#ifndef GEODETIC_H_
#define GEODETIC_H_
#include <iostream>
#include <cmath>
const double EARTH_SEMIMAJOR_AXIS_WGS_84 = 6378137.0;
const double EARTH_FLATTENING = 1 / 298.257223563;
const double EARTH_ECCENTRICITY_SQUARE = 2 * EARTH_FLATTENING
		- EARTH_FLATTENING * EARTH_FLATTENING;
class Geodetic {
public:

	typedef struct  {
		double e;
		double n;
		double u;
	} ENU;
	typedef struct  {
		double x;
		double y;
		double z;
	} ECEF;
	static inline void print(ENU p) {
		std::cout << p.e << "," << p.n << "," << p.u << std::endl;
	}
	static inline void print(ECEF p) {
		std::cout << p.x << "," << p.y << "," << p.z << std::endl;
	}
	static inline double deg2Rad(double deg) {
		return (deg * M_PI) / 180;
	}
	static inline double rad2deg(double rad) {
		return (rad * 180) / M_PI;
	}

	/**
	 * convert from lat long h to ecef xyz
	 * @param lat
	 * @param lng
	 * @param h
	 * @return
	 */
	static ECEF llh2xyz_deg(double lat, double lng, double h) {
		ECEF result;
		lat = deg2Rad(lat);
		lng = deg2Rad(lng);
		double sinLat = sin(lat);
		double cosLat = cos(lat);
		double sinLng = sin(lng);
		double cosLng = cos(lng);
		double chi = sqrt(1 - EARTH_ECCENTRICITY_SQUARE * (sinLat * sinLat));
		result.x = (EARTH_SEMIMAJOR_AXIS_WGS_84 / chi + h) * cosLat * cosLng;
		result.y = (EARTH_SEMIMAJOR_AXIS_WGS_84 / chi + h) * cosLat * sinLng;
		result.z = (EARTH_SEMIMAJOR_AXIS_WGS_84
				* (1 - EARTH_ECCENTRICITY_SQUARE) / chi + h) * sinLat;

		return result;
	}
	static ENU ecef2enu_rad(ECEF origin, ECEF point) {
		ENU result;
		double phiP = atan2(origin.z,
				sqrt(origin.x * origin.x + origin.y * origin.y));
		double lambda = atan2(origin.y, origin.x);

		result.e = -sin(lambda) * (point.x - origin.x)
				+ cos(lambda) * (point.y - origin.y);
		result.n = -sin(phiP) * cos(lambda) * (point.x - origin.x)
				- sin(phiP) * sin(lambda) * (point.y - origin.y)
				+ cos(phiP) * (point.z - origin.z);
		result.u = cos(phiP) * cos(lambda) * (point.x - origin.x)
				+ cos(phiP) * sin(lambda) * (point.y - origin.y)
				+ sin(phiP) * (point.z - origin.z);

		return result;
	}
	static ENU llh2enu_deg(double lat0, double lng0, double alt0, double lat,
			double lng, double alt) {
		Geodetic::ECEF origin = Geodetic::llh2xyz_deg(lat0, lng0, alt0);
		Geodetic::ECEF point = Geodetic::llh2xyz_deg(lat, lng, alt);
		Geodetic::ENU enu = Geodetic::ecef2enu_rad(origin, point);
		return enu;
	}

	static void WGS84toECEF(double lat, double lon, double hae, double* x,
			double* y, double* z) {

		double cos_lat = std::cos(lat);
		double sin_lat = std::sin(lat);
		double cos_lon = std::cos(lon);
		double sin_lon = std::sin(lon);
		double rn = computeRn(lat);

		*x = (rn + hae) * cos_lat * cos_lon;
		*y = (rn + hae) * cos_lat * sin_lon;
		*z = (((1.0 - EARTH_ECCENTRICITY_SQUARE) * rn) + hae) * sin_lat;
	}
	static inline double computeRn(double lat) {
		double lat_sin = std::sin(lat);
		return EARTH_SEMIMAJOR_AXIS_WGS_84
				/ std::sqrt(1 - EARTH_ECCENTRICITY_SQUARE * (lat_sin * lat_sin));
	}

private:
Geodetic();
virtual
~Geodetic();
};

#endif /* GEODETIC_H_ */
