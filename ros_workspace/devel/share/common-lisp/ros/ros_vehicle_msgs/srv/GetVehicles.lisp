; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude GetVehicles-request.msg.html

(cl:defclass <GetVehicles-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVehicles-request (<GetVehicles-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVehicles-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVehicles-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetVehicles-request> is deprecated: use ros_vehicle_msgs-srv:GetVehicles-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVehicles-request>) ostream)
  "Serializes a message object of type '<GetVehicles-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVehicles-request>) istream)
  "Deserializes a message object of type '<GetVehicles-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVehicles-request>)))
  "Returns string type for a service object of type '<GetVehicles-request>"
  "ros_vehicle_msgs/GetVehiclesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVehicles-request)))
  "Returns string type for a service object of type 'GetVehicles-request"
  "ros_vehicle_msgs/GetVehiclesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVehicles-request>)))
  "Returns md5sum for a message object of type '<GetVehicles-request>"
  "fc55862084b8f5e07baaa8d8b29bc212")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVehicles-request)))
  "Returns md5sum for a message object of type 'GetVehicles-request"
  "fc55862084b8f5e07baaa8d8b29bc212")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVehicles-request>)))
  "Returns full string definition for message of type '<GetVehicles-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVehicles-request)))
  "Returns full string definition for message of type 'GetVehicles-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVehicles-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVehicles-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVehicles-request
))
;//! \htmlinclude GetVehicles-response.msg.html

(cl:defclass <GetVehicles-response> (roslisp-msg-protocol:ros-message)
  ((vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector big_actor_msgs-msg:Vehicle)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Vehicle :initial-element (cl:make-instance 'big_actor_msgs-msg:Vehicle))))
)

(cl:defclass GetVehicles-response (<GetVehicles-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVehicles-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVehicles-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetVehicles-response> is deprecated: use ros_vehicle_msgs-srv:GetVehicles-response instead.")))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <GetVehicles-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicles-val is deprecated.  Use ros_vehicle_msgs-srv:vehicles instead.")
  (vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVehicles-response>) ostream)
  "Serializes a message object of type '<GetVehicles-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVehicles-response>) istream)
  "Deserializes a message object of type '<GetVehicles-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Vehicle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVehicles-response>)))
  "Returns string type for a service object of type '<GetVehicles-response>"
  "ros_vehicle_msgs/GetVehiclesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVehicles-response)))
  "Returns string type for a service object of type 'GetVehicles-response"
  "ros_vehicle_msgs/GetVehiclesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVehicles-response>)))
  "Returns md5sum for a message object of type '<GetVehicles-response>"
  "fc55862084b8f5e07baaa8d8b29bc212")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVehicles-response)))
  "Returns md5sum for a message object of type 'GetVehicles-response"
  "fc55862084b8f5e07baaa8d8b29bc212")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVehicles-response>)))
  "Returns full string definition for message of type '<GetVehicles-response>"
  (cl:format cl:nil "big_actor_msgs/Vehicle[] vehicles~%~%================================================================================~%MSG: big_actor_msgs/Vehicle~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVehicles-response)))
  "Returns full string definition for message of type 'GetVehicles-response"
  (cl:format cl:nil "big_actor_msgs/Vehicle[] vehicles~%~%================================================================================~%MSG: big_actor_msgs/Vehicle~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVehicles-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVehicles-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVehicles-response
    (cl:cons ':vehicles (vehicles msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVehicles)))
  'GetVehicles-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVehicles)))
  'GetVehicles-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVehicles)))
  "Returns string type for a service object of type '<GetVehicles>"
  "ros_vehicle_msgs/GetVehicles")