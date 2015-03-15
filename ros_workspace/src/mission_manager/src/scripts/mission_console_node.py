#!/usr/bin/env python
import roslib; roslib.load_manifest('mission_manager')
import rospy
import sys
import time
from ros_vehicle_msgs.srv import *
from ros_vehicle_msgs.msg import *
from big_actor_msgs.msg import *

def read_int(prompt, options=[],values=[]):
    first = True
    out_str=""
    if len(options)>0:
        out_str += "Allowed options:"
        for opt, v in map(None,options, values):
            if not first :
                out_str += ", "
            else: first = False
            out_str += opt
            out_str += "="
            out_str += str(v)
           
        out_str += "\n" 
    out_str+=prompt   
    rc=int(raw_input(out_str))
    if (len(values)>0 and rc not in values):
        raise Exception("Invalid option")
    else:
        return rc
            
def show_menu (title, options, main=False):
    import os
    try:
        os.system('clear') 
    except:
        os.system('cls') 
   
    
    exit_lbl = "back"
    if main:
        exit_lbl = "exit"
    print "==================="
    print " ", title
    print "==================="
    opt = 1
    for option in options:
        print " ", opt, ".", option
        opt += 1
    print "==================="
    print "  0.", exit_lbl
    print ""    
    try:
        option_selected = int(raw_input('Option:'))
        if option_selected < opt and option_selected >= 0:
            return option_selected
        else:
            print "Invalid option!"
            return -1
    except ValueError:
            print "Invalid option!"
            
    
    pass
def add_task_action():
    try:
        print "add a new task action:"
        t = Task()
        t.status = Task.TS_TODO
        t.taskType = read_int("Task Type:",["TT_NONE",
                                            "TT_SEARCH",
                                            "TT_GOTO_WP",
                                            "TT_TRACK",
                                            "TT_GOTO_LOCATION",
                                            "TT_RETURN_HOME",
                                            "TT_HOLD",
                                            "TT_VIDEOSTREAM",
                                            ],[0,1,2,3,4,5,6,7])
        t.vehicleId = 0
        t.taskId = int(raw_input("Task Id:"))
        t.taskStamp = int(time.time())
        t.creationStamp = t.taskStamp
        add_task = rospy.ServiceProxy('add_task', AddTask)
        response = add_task(t)
        if (not response.result.ok):
            print "ERR:"
            print response.result.error
        else:
            print "OK: task created!"
    except Exception as e:
        print  e
    pass
def assign_task_action():
    try:
        print "assign task action:"    
        taskId = int(raw_input("Task Id:"))
        vehicleId = int(raw_input("Vehicle Id:"))
        assign_task = rospy.ServiceProxy('assign_task', AssignTask)
        response = assign_task(taskId, vehicleId)
        if (not response.result.ok):
            print "ERR:"
            print response.result.error
        else:
            print "OK: task assigned!"
        pass
    except Exception as e:
         print  e
def abort_task_action():
    try:
        print "abort task action:"
        taskId = int(raw_input("Task Id:"))
        abort_task = rospy.ServiceProxy('abort_task', AbortTask)
        response = abort_task(taskId)
        if (not response.result.ok):
            print "ERR:"
            print response.result.error
        else:
            print "OK: task aborted!"
    except Exception as e:
        print  e    
    pass
def add_location_action():
    try:
        add_location = rospy.ServiceProxy('add_location', AddLocation)
        location = Location()
        location.locationId = int(raw_input("Location Id:"))
        location.locationType = read_int("Location Type:",["LT_NONE",
                                            "LT_SURFACE",
                                            "LT_AIR_SPACE",
                                            "LT_UNDERWATER",
                                            "LT_OIL_SPILL"
                                            ],[0,1,2,3,4])
        location.maximumAltitude=int(raw_input("Max altitude:"))
        location.minimumAltitude=int(raw_input("Min altitude:"))
        location.boundaries = []
        n_bounds = int(raw_input("Number of Boundarys: "))
        for i in range(n_bounds):
            print "->Add boundary", i, ": "
            boundary = LatLng()
            boundary.latitude = float(raw_input("\tLatitude:"))
            boundary.longitude = float(raw_input("\tLongitude:"))
            location.boundaries.append(boundary)
        print location
        response = add_location(location)
        if (not response.result.ok):
            print "ERR:"
            print response.result.error
        else:
            print "OK: location added!"
    except Exception as e:
        print  e    
    
def main_menu():
    while True:
        option = show_menu("Main", ["add task", "assign task", "abort task", "add location"], True)
        if(option == 0):
            break
        elif (option == 1):
            add_task_action()
        elif (option == 2):
            assign_task_action()
        elif (option == 3):
            abort_task_action()
            pass
        elif (option == 4):
            add_location_action()
            pass
        print "press any key to continue..."
        char = sys.stdin.read(1)  
   
def mission_console_node():
    
    
    pub = rospy.Publisher('/MissionStateEstimate', MissionStateEstimate)
    rospy.init_node('mission_console_node')

    main_menu()

if __name__ == '__main__':
    try:
        mission_console_node()
    except rospy.ROSInterruptException:
        pass
