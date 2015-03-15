#!/usr/bin/env python
import rospy
import time
from xml.dom import minidom
import  xml.etree.ElementTree 


from big_actor_msgs.msg import MissionStateEstimate 
from big_actor_msgs.msg import Task
from big_actor_msgs.msg import Location
import xml.etree.ElementTree as ET
from big_actor_msgs.msg._LatLng import LatLng

def loadTasks(file):
    tasks = []
    tree = ET.parse(file)
    root = tree.getroot()
    for item in root:
        task=Task()
        task.taskId=int(item.attrib['id'])
        task.taskType=int(item.attrib['taskType'])
        task.vehicleId=long(item.attrib['vehicleId'])
        task.status=int(item.attrib['status'])
        task.creationStamp=long(item.attrib['creationStamp'])
        task.taskStamp=long(item.attrib['taskStamp'])
        task.parameters=''
        tasks.append(task)
    return tasks

def loadLocations(file):
    locations = []
    tree = ET.parse(file)
    root = tree.getroot()
    for item in root:
        location=Location()
        location.locationId=int(item.attrib['id'])
        location.timeStamp=long(item.attrib['timeStamp'])
        location.maximumAltitude=int(item.attrib['maxAltitude'])
        location.minimumAltitude=int(item.attrib['minAltitude'])
        for boundarie in item:
            for point in boundarie:
                b = LatLng()  
                b.latitude=float(point.attrib['latitude'])
                b.longitude=float(point.attrib['longitude'])
                location.boundaries.append(b)
        locations.append(location)
    return locations

def buildMSE(tasks_file,locations_file):
    mse = MissionStateEstimate()
    mse.locations=loadLocations(locations_file)
    mse.tasks=loadTasks(tasks_file)
    mse.srcVehicleId=0
    mse.timeStamp== int(round(time.time() * 1000))
    
    
    
    return mse

def task_publisher_node():
    
    
    pub = rospy.Publisher('/MissionStateEstimate', MissionStateEstimate)
    rospy.init_node('task_publisher')
    locations_file=rospy.get_param('~locations_file','locations.xml')
    tasks_file=rospy.get_param('~tasks_file','tasks.xml')

    while not rospy.is_shutdown():
        mse = buildMSE(tasks_file,locations_file) 
        pub.publish(mse)
        rospy.sleep(10.0)

if __name__ == '__main__':
    try:
        task_publisher_node()
    except rospy.ROSInterruptException:
        pass
