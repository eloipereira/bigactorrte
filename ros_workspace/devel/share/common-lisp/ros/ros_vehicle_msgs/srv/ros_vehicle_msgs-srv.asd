
(cl:in-package :asdf)

(defsystem "ros_vehicle_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ros_vehicle_msgs-msg
)
  :components ((:file "_package")
    (:file "AbortTask" :depends-on ("_package_AbortTask"))
    (:file "_package_AbortTask" :depends-on ("_package"))
    (:file "AddStaticVehicle" :depends-on ("_package_AddStaticVehicle"))
    (:file "_package_AddStaticVehicle" :depends-on ("_package"))
    (:file "AISOn" :depends-on ("_package_AISOn"))
    (:file "_package_AISOn" :depends-on ("_package"))
    (:file "GetVehicles" :depends-on ("_package_GetVehicles"))
    (:file "_package_GetVehicles" :depends-on ("_package"))
    (:file "GetTasks" :depends-on ("_package_GetTasks"))
    (:file "_package_GetTasks" :depends-on ("_package"))
    (:file "GetUAVWaypoint" :depends-on ("_package_GetUAVWaypoint"))
    (:file "_package_GetUAVWaypoint" :depends-on ("_package"))
    (:file "GetWaypoints" :depends-on ("_package_GetWaypoints"))
    (:file "_package_GetWaypoints" :depends-on ("_package"))
    (:file "GetLocations" :depends-on ("_package_GetLocations"))
    (:file "_package_GetLocations" :depends-on ("_package"))
    (:file "AddTask" :depends-on ("_package_AddTask"))
    (:file "_package_AddTask" :depends-on ("_package"))
    (:file "AISAddFilter" :depends-on ("_package_AISAddFilter"))
    (:file "_package_AISAddFilter" :depends-on ("_package"))
    (:file "AssignTask" :depends-on ("_package_AssignTask"))
    (:file "_package_AssignTask" :depends-on ("_package"))
    (:file "AISOff" :depends-on ("_package_AISOff"))
    (:file "_package_AISOff" :depends-on ("_package"))
    (:file "AISRemoveFilter" :depends-on ("_package_AISRemoveFilter"))
    (:file "_package_AISRemoveFilter" :depends-on ("_package"))
    (:file "AISClearFilters" :depends-on ("_package_AISClearFilters"))
    (:file "_package_AISClearFilters" :depends-on ("_package"))
    (:file "AddLocation" :depends-on ("_package_AddLocation"))
    (:file "_package_AddLocation" :depends-on ("_package"))
    (:file "UpdateWaypoint" :depends-on ("_package_UpdateWaypoint"))
    (:file "_package_UpdateWaypoint" :depends-on ("_package"))
  ))