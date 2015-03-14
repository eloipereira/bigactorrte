; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude GetWaypoints-request.msg.html

(cl:defclass <GetWaypoints-request> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetWaypoints-request (<GetWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetWaypoints-request> is deprecated: use ros_vehicle_msgs-srv:GetWaypoints-request instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <GetWaypoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicleId-val is deprecated.  Use ros_vehicle_msgs-srv:vehicleId instead.")
  (vehicleId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoints-request>) ostream)
  "Serializes a message object of type '<GetWaypoints-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoints-request>) istream)
  "Deserializes a message object of type '<GetWaypoints-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoints-request>)))
  "Returns string type for a service object of type '<GetWaypoints-request>"
  "ros_vehicle_msgs/GetWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints-request)))
  "Returns string type for a service object of type 'GetWaypoints-request"
  "ros_vehicle_msgs/GetWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoints-request>)))
  "Returns md5sum for a message object of type '<GetWaypoints-request>"
  "37560f72d0b1c9e36f8ce9a81e339b28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoints-request)))
  "Returns md5sum for a message object of type 'GetWaypoints-request"
  "37560f72d0b1c9e36f8ce9a81e339b28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoints-request>)))
  "Returns full string definition for message of type '<GetWaypoints-request>"
  (cl:format cl:nil "uint16 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoints-request)))
  "Returns full string definition for message of type 'GetWaypoints-request"
  (cl:format cl:nil "uint16 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoints-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoints-request
    (cl:cons ':vehicleId (vehicleId msg))
))
;//! \htmlinclude GetWaypoints-response.msg.html

(cl:defclass <GetWaypoints-response> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector ros_vehicle_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'ros_vehicle_msgs-msg:Waypoint :initial-element (cl:make-instance 'ros_vehicle_msgs-msg:Waypoint)))
   (result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass GetWaypoints-response (<GetWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetWaypoints-response> is deprecated: use ros_vehicle_msgs-srv:GetWaypoints-response instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <GetWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:waypoints-val is deprecated.  Use ros_vehicle_msgs-srv:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoints-response>) ostream)
  "Serializes a message object of type '<GetWaypoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoints-response>) istream)
  "Deserializes a message object of type '<GetWaypoints-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_vehicle_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoints-response>)))
  "Returns string type for a service object of type '<GetWaypoints-response>"
  "ros_vehicle_msgs/GetWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints-response)))
  "Returns string type for a service object of type 'GetWaypoints-response"
  "ros_vehicle_msgs/GetWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoints-response>)))
  "Returns md5sum for a message object of type '<GetWaypoints-response>"
  "37560f72d0b1c9e36f8ce9a81e339b28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoints-response)))
  "Returns md5sum for a message object of type 'GetWaypoints-response"
  "37560f72d0b1c9e36f8ce9a81e339b28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoints-response>)))
  "Returns full string definition for message of type '<GetWaypoints-response>"
  (cl:format cl:nil "Waypoint[] waypoints~%ServiceReturnBool result~%~%~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoints-response)))
  "Returns full string definition for message of type 'GetWaypoints-response"
  (cl:format cl:nil "Waypoint[] waypoints~%ServiceReturnBool result~%~%~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoints-response
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWaypoints)))
  'GetWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWaypoints)))
  'GetWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoints)))
  "Returns string type for a service object of type '<GetWaypoints>"
  "ros_vehicle_msgs/GetWaypoints")