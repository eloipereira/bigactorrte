; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (vehicle_ttl
    :reader vehicle_ttl
    :initarg :vehicle_ttl
    :type cl:integer
    :initform 0)
   (vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type big_actor_msgs-msg:LatLngAlt
    :initform (cl:make-instance 'big_actor_msgs-msg:LatLngAlt))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (taskId
    :reader taskId
    :initarg :taskId
    :type cl:integer
    :initform 0)
   (taskState
    :reader taskState
    :initarg :taskState
    :type cl:fixnum
    :initform 0)
   (vehicleState
    :reader vehicleState
    :initarg :vehicleState
    :type cl:fixnum
    :initform 0)
   (vehicleType
    :reader vehicleType
    :initarg :vehicleType
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (networks
    :reader networks
    :initarg :networks
    :type (cl:vector big_actor_msgs-msg:Network)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Network :initial-element (cl:make-instance 'big_actor_msgs-msg:Network))))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<Vehicle> is deprecated: use big_actor_msgs-msg:Vehicle instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:timeStamp-val is deprecated.  Use big_actor_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'vehicle_ttl-val :lambda-list '(m))
(cl:defmethod vehicle_ttl-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicle_ttl-val is deprecated.  Use big_actor_msgs-msg:vehicle_ttl instead.")
  (vehicle_ttl m))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicleId-val is deprecated.  Use big_actor_msgs-msg:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:position-val is deprecated.  Use big_actor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:heading-val is deprecated.  Use big_actor_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:taskId-val is deprecated.  Use big_actor_msgs-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'taskState-val :lambda-list '(m))
(cl:defmethod taskState-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:taskState-val is deprecated.  Use big_actor_msgs-msg:taskState instead.")
  (taskState m))

(cl:ensure-generic-function 'vehicleState-val :lambda-list '(m))
(cl:defmethod vehicleState-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicleState-val is deprecated.  Use big_actor_msgs-msg:vehicleState instead.")
  (vehicleState m))

(cl:ensure-generic-function 'vehicleType-val :lambda-list '(m))
(cl:defmethod vehicleType-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicleType-val is deprecated.  Use big_actor_msgs-msg:vehicleType instead.")
  (vehicleType m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:name-val is deprecated.  Use big_actor_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'networks-val :lambda-list '(m))
(cl:defmethod networks-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:networks-val is deprecated.  Use big_actor_msgs-msg:networks instead.")
  (networks m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Vehicle>)))
    "Constants for message type '<Vehicle>"
  '((:VS_NONE . 0)
    (:VS_IDLE . 1)
    (:VS_BUSY . 2)
    (:VT_NONE . 0)
    (:VT_QUADROTOR . 1)
    (:VT_VESSEL . 2)
    (:VT_DRIFTER . 3)
    (:VT_MODEL_AIRPLANE . 4)
    (:VT_GROUND_STATION . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Vehicle)))
    "Constants for message type 'Vehicle"
  '((:VS_NONE . 0)
    (:VS_IDLE . 1)
    (:VS_BUSY . 2)
    (:VT_NONE . 0)
    (:VT_QUADROTOR . 1)
    (:VT_VESSEL . 2)
    (:VT_DRIFTER . 3)
    (:VT_MODEL_AIRPLANE . 4)
    (:VT_GROUND_STATION . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicle_ttl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleType)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'networks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'networks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicle_ttl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleType)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'networks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'networks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Network))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "big_actor_msgs/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "big_actor_msgs/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "6a2ecde8dc46fa2f20f77fe7b2d94457")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "6a2ecde8dc46fa2f20f77fe7b2d94457")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'networks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':vehicle_ttl (vehicle_ttl msg))
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':position (position msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':taskState (taskState msg))
    (cl:cons ':vehicleState (vehicleState msg))
    (cl:cons ':vehicleType (vehicleType msg))
    (cl:cons ':name (name msg))
    (cl:cons ':networks (networks msg))
))
