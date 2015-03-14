
(cl:in-package :asdf)

(defsystem "ros_vehicle_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :big_actor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "WaypointList" :depends-on ("_package_WaypointList"))
    (:file "_package_WaypointList" :depends-on ("_package"))
    (:file "GotoCommand" :depends-on ("_package_GotoCommand"))
    (:file "_package_GotoCommand" :depends-on ("_package"))
    (:file "TaskState" :depends-on ("_package_TaskState"))
    (:file "_package_TaskState" :depends-on ("_package"))
    (:file "TrackStatus" :depends-on ("_package_TrackStatus"))
    (:file "_package_TrackStatus" :depends-on ("_package"))
    (:file "GatewayData" :depends-on ("_package_GatewayData"))
    (:file "_package_GatewayData" :depends-on ("_package"))
    (:file "LoiterData" :depends-on ("_package_LoiterData"))
    (:file "_package_LoiterData" :depends-on ("_package"))
    (:file "ServiceReturnBool" :depends-on ("_package_ServiceReturnBool"))
    (:file "_package_ServiceReturnBool" :depends-on ("_package"))
    (:file "SearchCommand" :depends-on ("_package_SearchCommand"))
    (:file "_package_SearchCommand" :depends-on ("_package"))
    (:file "VehicleState" :depends-on ("_package_VehicleState"))
    (:file "_package_VehicleState" :depends-on ("_package"))
  ))