; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude GetLocations-request.msg.html

(cl:defclass <GetLocations-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLocations-request (<GetLocations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetLocations-request> is deprecated: use ros_vehicle_msgs-srv:GetLocations-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocations-request>) ostream)
  "Serializes a message object of type '<GetLocations-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocations-request>) istream)
  "Deserializes a message object of type '<GetLocations-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocations-request>)))
  "Returns string type for a service object of type '<GetLocations-request>"
  "ros_vehicle_msgs/GetLocationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocations-request)))
  "Returns string type for a service object of type 'GetLocations-request"
  "ros_vehicle_msgs/GetLocationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocations-request>)))
  "Returns md5sum for a message object of type '<GetLocations-request>"
  "622050f7bf06629d3ce9177375f41075")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocations-request)))
  "Returns md5sum for a message object of type 'GetLocations-request"
  "622050f7bf06629d3ce9177375f41075")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocations-request>)))
  "Returns full string definition for message of type '<GetLocations-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocations-request)))
  "Returns full string definition for message of type 'GetLocations-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocations-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocations-request
))
;//! \htmlinclude GetLocations-response.msg.html

(cl:defclass <GetLocations-response> (roslisp-msg-protocol:ros-message)
  ((locations
    :reader locations
    :initarg :locations
    :type (cl:vector big_actor_msgs-msg:Location)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Location :initial-element (cl:make-instance 'big_actor_msgs-msg:Location))))
)

(cl:defclass GetLocations-response (<GetLocations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetLocations-response> is deprecated: use ros_vehicle_msgs-srv:GetLocations-response instead.")))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <GetLocations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:locations-val is deprecated.  Use ros_vehicle_msgs-srv:locations instead.")
  (locations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocations-response>) ostream)
  "Serializes a message object of type '<GetLocations-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'locations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocations-response>) istream)
  "Deserializes a message object of type '<GetLocations-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Location))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocations-response>)))
  "Returns string type for a service object of type '<GetLocations-response>"
  "ros_vehicle_msgs/GetLocationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocations-response)))
  "Returns string type for a service object of type 'GetLocations-response"
  "ros_vehicle_msgs/GetLocationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocations-response>)))
  "Returns md5sum for a message object of type '<GetLocations-response>"
  "622050f7bf06629d3ce9177375f41075")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocations-response)))
  "Returns md5sum for a message object of type 'GetLocations-response"
  "622050f7bf06629d3ce9177375f41075")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocations-response>)))
  "Returns full string definition for message of type '<GetLocations-response>"
  (cl:format cl:nil "big_actor_msgs/Location[] locations~%~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocations-response)))
  "Returns full string definition for message of type 'GetLocations-response"
  (cl:format cl:nil "big_actor_msgs/Location[] locations~%~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocations-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocations-response
    (cl:cons ':locations (locations msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocations)))
  'GetLocations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocations)))
  'GetLocations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocations)))
  "Returns string type for a service object of type '<GetLocations>"
  "ros_vehicle_msgs/GetLocations")