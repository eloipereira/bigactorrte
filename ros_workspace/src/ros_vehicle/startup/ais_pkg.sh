#!/bin/bash
# /etc/init.d/ais_pkg

source /data/rosvehicle/rep13/devel/setup.bash

export ROS_PACKAGE_PATH=/data/rosvehicle/rep13:$ROS_PACKAGE_PATH

export ROS_IP=192.168.2.40

# initialze the pidfile
UAVCMD_PIDFILE='/var/run/ais_pkg.pid'

ROS_USER=rosvehicle

touch $UAVCMD_PIDFILE

/bin/chown $ROS_USER\:$ROS_USER $UAVCMD_PIDFILE

# roslaunch vars
ROSLAUNCH_BIN="/data/ros/groovy/bin/roslaunch"
ROSLAUNCH_ARGS="--pid=$UAVCMD_PIDFILE"
# set path to launchfile
ROSLAUNCH_FILE="/data/rosvehicle/rep13/src/ais_pkg/run.launch"
# carry out specific functions when asked by the system
case "$1" in
  start)
    echo "Starting AIS_PKG service ..."
    su -c "$ROSLAUNCH_BIN $ROSLAUNCH_ARGS $ROSLAUNCH_FILE" $ROS_USER &
    ;;   
  stop)
    kill -2 $(cat $UAVCMD_PIDFILE) > /dev/null
    echo -n "" > $UAVCMD_PIDFILE
    echo "Stopping AIS_PKG services ..."
    ;;  
  restart)
    $0 stop
    sleep 3
    $0 start
    ;;  
  *)  
    echo "Usage: $0 {start|stop|restart}"
    exit 1
    ;;  
esac
exit 0