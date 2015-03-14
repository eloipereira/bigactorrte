; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude UpdateWaypoint-request.msg.html

(cl:defclass <UpdateWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((wp
    :reader wp
    :initarg :wp
    :type ros_vehicle_msgs-msg:Waypoint
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:Waypoint)))
)

(cl:defclass UpdateWaypoint-request (<UpdateWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<UpdateWaypoint-request> is deprecated: use ros_vehicle_msgs-srv:UpdateWaypoint-request instead.")))

(cl:ensure-generic-function 'wp-val :lambda-list '(m))
(cl:defmethod wp-val ((m <UpdateWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:wp-val is deprecated.  Use ros_vehicle_msgs-srv:wp instead.")
  (wp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateWaypoint-request>) ostream)
  "Serializes a message object of type '<UpdateWaypoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateWaypoint-request>) istream)
  "Deserializes a message object of type '<UpdateWaypoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateWaypoint-request>)))
  "Returns string type for a service object of type '<UpdateWaypoint-request>"
  "ros_vehicle_msgs/UpdateWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateWaypoint-request)))
  "Returns string type for a service object of type 'UpdateWaypoint-request"
  "ros_vehicle_msgs/UpdateWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateWaypoint-request>)))
  "Returns md5sum for a message object of type '<UpdateWaypoint-request>"
  "6198971bac65ad537719ff30fecd8b10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateWaypoint-request)))
  "Returns md5sum for a message object of type 'UpdateWaypoint-request"
  "6198971bac65ad537719ff30fecd8b10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateWaypoint-request>)))
  "Returns full string definition for message of type '<UpdateWaypoint-request>"
  (cl:format cl:nil "Waypoint wp~%~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateWaypoint-request)))
  "Returns full string definition for message of type 'UpdateWaypoint-request"
  (cl:format cl:nil "Waypoint wp~%~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateWaypoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateWaypoint-request
    (cl:cons ':wp (wp msg))
))
;//! \htmlinclude UpdateWaypoint-response.msg.html

(cl:defclass <UpdateWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass UpdateWaypoint-response (<UpdateWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<UpdateWaypoint-response> is deprecated: use ros_vehicle_msgs-srv:UpdateWaypoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <UpdateWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateWaypoint-response>) ostream)
  "Serializes a message object of type '<UpdateWaypoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateWaypoint-response>) istream)
  "Deserializes a message object of type '<UpdateWaypoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateWaypoint-response>)))
  "Returns string type for a service object of type '<UpdateWaypoint-response>"
  "ros_vehicle_msgs/UpdateWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateWaypoint-response)))
  "Returns string type for a service object of type 'UpdateWaypoint-response"
  "ros_vehicle_msgs/UpdateWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateWaypoint-response>)))
  "Returns md5sum for a message object of type '<UpdateWaypoint-response>"
  "6198971bac65ad537719ff30fecd8b10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateWaypoint-response)))
  "Returns md5sum for a message object of type 'UpdateWaypoint-response"
  "6198971bac65ad537719ff30fecd8b10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateWaypoint-response>)))
  "Returns full string definition for message of type '<UpdateWaypoint-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateWaypoint-response)))
  "Returns full string definition for message of type 'UpdateWaypoint-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateWaypoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateWaypoint-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateWaypoint)))
  'UpdateWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateWaypoint)))
  'UpdateWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateWaypoint)))
  "Returns string type for a service object of type '<UpdateWaypoint>"
  "ros_vehicle_msgs/UpdateWaypoint")