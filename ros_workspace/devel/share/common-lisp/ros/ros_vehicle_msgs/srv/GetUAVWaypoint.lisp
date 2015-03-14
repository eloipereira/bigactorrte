; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude GetUAVWaypoint-request.msg.html

(cl:defclass <GetUAVWaypoint-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUAVWaypoint-request (<GetUAVWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUAVWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUAVWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetUAVWaypoint-request> is deprecated: use ros_vehicle_msgs-srv:GetUAVWaypoint-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUAVWaypoint-request>) ostream)
  "Serializes a message object of type '<GetUAVWaypoint-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUAVWaypoint-request>) istream)
  "Deserializes a message object of type '<GetUAVWaypoint-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUAVWaypoint-request>)))
  "Returns string type for a service object of type '<GetUAVWaypoint-request>"
  "ros_vehicle_msgs/GetUAVWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUAVWaypoint-request)))
  "Returns string type for a service object of type 'GetUAVWaypoint-request"
  "ros_vehicle_msgs/GetUAVWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUAVWaypoint-request>)))
  "Returns md5sum for a message object of type '<GetUAVWaypoint-request>"
  "5eb7dba43a20b2f9718e562c710ce375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUAVWaypoint-request)))
  "Returns md5sum for a message object of type 'GetUAVWaypoint-request"
  "5eb7dba43a20b2f9718e562c710ce375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUAVWaypoint-request>)))
  "Returns full string definition for message of type '<GetUAVWaypoint-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUAVWaypoint-request)))
  "Returns full string definition for message of type 'GetUAVWaypoint-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUAVWaypoint-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUAVWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUAVWaypoint-request
))
;//! \htmlinclude GetUAVWaypoint-response.msg.html

(cl:defclass <GetUAVWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((waypoint
    :reader waypoint
    :initarg :waypoint
    :type ros_vehicle_msgs-msg:Waypoint
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:Waypoint))
   (result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass GetUAVWaypoint-response (<GetUAVWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUAVWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUAVWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetUAVWaypoint-response> is deprecated: use ros_vehicle_msgs-srv:GetUAVWaypoint-response instead.")))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <GetUAVWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:waypoint-val is deprecated.  Use ros_vehicle_msgs-srv:waypoint instead.")
  (waypoint m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetUAVWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUAVWaypoint-response>) ostream)
  "Serializes a message object of type '<GetUAVWaypoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUAVWaypoint-response>) istream)
  "Deserializes a message object of type '<GetUAVWaypoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUAVWaypoint-response>)))
  "Returns string type for a service object of type '<GetUAVWaypoint-response>"
  "ros_vehicle_msgs/GetUAVWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUAVWaypoint-response)))
  "Returns string type for a service object of type 'GetUAVWaypoint-response"
  "ros_vehicle_msgs/GetUAVWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUAVWaypoint-response>)))
  "Returns md5sum for a message object of type '<GetUAVWaypoint-response>"
  "5eb7dba43a20b2f9718e562c710ce375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUAVWaypoint-response)))
  "Returns md5sum for a message object of type 'GetUAVWaypoint-response"
  "5eb7dba43a20b2f9718e562c710ce375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUAVWaypoint-response>)))
  "Returns full string definition for message of type '<GetUAVWaypoint-response>"
  (cl:format cl:nil "Waypoint waypoint~%ServiceReturnBool result~%~%~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUAVWaypoint-response)))
  "Returns full string definition for message of type 'GetUAVWaypoint-response"
  (cl:format cl:nil "Waypoint waypoint~%ServiceReturnBool result~%~%~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUAVWaypoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUAVWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUAVWaypoint-response
    (cl:cons ':waypoint (waypoint msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUAVWaypoint)))
  'GetUAVWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUAVWaypoint)))
  'GetUAVWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUAVWaypoint)))
  "Returns string type for a service object of type '<GetUAVWaypoint>"
  "ros_vehicle_msgs/GetUAVWaypoint")