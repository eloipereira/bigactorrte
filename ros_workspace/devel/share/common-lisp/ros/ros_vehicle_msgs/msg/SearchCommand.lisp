; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-msg)


;//! \htmlinclude SearchCommand.msg.html

(cl:defclass <SearchCommand> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0)
   (area
    :reader area
    :initarg :area
    :type big_actor_msgs-msg:Location
    :initform (cl:make-instance 'big_actor_msgs-msg:Location)))
)

(cl:defclass SearchCommand (<SearchCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-msg:<SearchCommand> is deprecated: use ros_vehicle_msgs-msg:SearchCommand instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <SearchCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:vehicleId-val is deprecated.  Use ros_vehicle_msgs-msg:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <SearchCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:area-val is deprecated.  Use ros_vehicle_msgs-msg:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchCommand>) ostream)
  "Serializes a message object of type '<SearchCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchCommand>) istream)
  "Deserializes a message object of type '<SearchCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchCommand>)))
  "Returns string type for a message object of type '<SearchCommand>"
  "ros_vehicle_msgs/SearchCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchCommand)))
  "Returns string type for a message object of type 'SearchCommand"
  "ros_vehicle_msgs/SearchCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchCommand>)))
  "Returns md5sum for a message object of type '<SearchCommand>"
  "0ce12ec05ccec5f384cbcc77352b2b49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchCommand)))
  "Returns md5sum for a message object of type 'SearchCommand"
  "0ce12ec05ccec5f384cbcc77352b2b49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchCommand>)))
  "Returns full string definition for message of type '<SearchCommand>"
  (cl:format cl:nil "uint64 vehicleId~%big_actor_msgs/Location area~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchCommand)))
  "Returns full string definition for message of type 'SearchCommand"
  (cl:format cl:nil "uint64 vehicleId~%big_actor_msgs/Location area~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchCommand>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchCommand
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':area (area msg))
))
