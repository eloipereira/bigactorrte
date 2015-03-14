; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AddLocation-request.msg.html

(cl:defclass <AddLocation-request> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type big_actor_msgs-msg:Location
    :initform (cl:make-instance 'big_actor_msgs-msg:Location)))
)

(cl:defclass AddLocation-request (<AddLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AddLocation-request> is deprecated: use ros_vehicle_msgs-srv:AddLocation-request instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <AddLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:location-val is deprecated.  Use ros_vehicle_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLocation-request>) ostream)
  "Serializes a message object of type '<AddLocation-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLocation-request>) istream)
  "Deserializes a message object of type '<AddLocation-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLocation-request>)))
  "Returns string type for a service object of type '<AddLocation-request>"
  "ros_vehicle_msgs/AddLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLocation-request)))
  "Returns string type for a service object of type 'AddLocation-request"
  "ros_vehicle_msgs/AddLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLocation-request>)))
  "Returns md5sum for a message object of type '<AddLocation-request>"
  "7680d9188c881e0928856c2d1f2003b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLocation-request)))
  "Returns md5sum for a message object of type 'AddLocation-request"
  "7680d9188c881e0928856c2d1f2003b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLocation-request>)))
  "Returns full string definition for message of type '<AddLocation-request>"
  (cl:format cl:nil "big_actor_msgs/Location location~%~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLocation-request)))
  "Returns full string definition for message of type 'AddLocation-request"
  (cl:format cl:nil "big_actor_msgs/Location location~%~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLocation-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLocation-request
    (cl:cons ':location (location msg))
))
;//! \htmlinclude AddLocation-response.msg.html

(cl:defclass <AddLocation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AddLocation-response (<AddLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AddLocation-response> is deprecated: use ros_vehicle_msgs-srv:AddLocation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLocation-response>) ostream)
  "Serializes a message object of type '<AddLocation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLocation-response>) istream)
  "Deserializes a message object of type '<AddLocation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLocation-response>)))
  "Returns string type for a service object of type '<AddLocation-response>"
  "ros_vehicle_msgs/AddLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLocation-response)))
  "Returns string type for a service object of type 'AddLocation-response"
  "ros_vehicle_msgs/AddLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLocation-response>)))
  "Returns md5sum for a message object of type '<AddLocation-response>"
  "7680d9188c881e0928856c2d1f2003b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLocation-response)))
  "Returns md5sum for a message object of type 'AddLocation-response"
  "7680d9188c881e0928856c2d1f2003b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLocation-response>)))
  "Returns full string definition for message of type '<AddLocation-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLocation-response)))
  "Returns full string definition for message of type 'AddLocation-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLocation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLocation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddLocation)))
  'AddLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddLocation)))
  'AddLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLocation)))
  "Returns string type for a service object of type '<AddLocation>"
  "ros_vehicle_msgs/AddLocation")