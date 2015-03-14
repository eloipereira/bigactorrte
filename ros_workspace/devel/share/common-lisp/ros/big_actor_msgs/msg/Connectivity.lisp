; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude Connectivity.msg.html

(cl:defclass <Connectivity> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (srcVehicleId
    :reader srcVehicleId
    :initarg :srcVehicleId
    :type cl:integer
    :initform 0)
   (dstVehicleId
    :reader dstVehicleId
    :initarg :dstVehicleId
    :type cl:integer
    :initform 0)
   (network
    :reader network
    :initarg :network
    :type big_actor_msgs-msg:Network
    :initform (cl:make-instance 'big_actor_msgs-msg:Network)))
)

(cl:defclass Connectivity (<Connectivity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connectivity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connectivity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<Connectivity> is deprecated: use big_actor_msgs-msg:Connectivity instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <Connectivity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:timeStamp-val is deprecated.  Use big_actor_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'srcVehicleId-val :lambda-list '(m))
(cl:defmethod srcVehicleId-val ((m <Connectivity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:srcVehicleId-val is deprecated.  Use big_actor_msgs-msg:srcVehicleId instead.")
  (srcVehicleId m))

(cl:ensure-generic-function 'dstVehicleId-val :lambda-list '(m))
(cl:defmethod dstVehicleId-val ((m <Connectivity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:dstVehicleId-val is deprecated.  Use big_actor_msgs-msg:dstVehicleId instead.")
  (dstVehicleId m))

(cl:ensure-generic-function 'network-val :lambda-list '(m))
(cl:defmethod network-val ((m <Connectivity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:network-val is deprecated.  Use big_actor_msgs-msg:network instead.")
  (network m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connectivity>) ostream)
  "Serializes a message object of type '<Connectivity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'dstVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'dstVehicleId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'network) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connectivity>) istream)
  "Deserializes a message object of type '<Connectivity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'dstVehicleId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'network) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connectivity>)))
  "Returns string type for a message object of type '<Connectivity>"
  "big_actor_msgs/Connectivity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connectivity)))
  "Returns string type for a message object of type 'Connectivity"
  "big_actor_msgs/Connectivity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connectivity>)))
  "Returns md5sum for a message object of type '<Connectivity>"
  "336d33e3fadbc313014484c00766aaff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connectivity)))
  "Returns md5sum for a message object of type 'Connectivity"
  "336d33e3fadbc313014484c00766aaff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connectivity>)))
  "Returns full string definition for message of type '<Connectivity>"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # First participating vehicle~%uint64 dstVehicleId           # Second participating vehicle~%Network network               # Network used for this connection~%~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connectivity)))
  "Returns full string definition for message of type 'Connectivity"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # First participating vehicle~%uint64 dstVehicleId           # Second participating vehicle~%Network network               # Network used for this connection~%~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connectivity>))
  (cl:+ 0
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'network))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connectivity>))
  "Converts a ROS message object to a list"
  (cl:list 'Connectivity
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':srcVehicleId (srcVehicleId msg))
    (cl:cons ':dstVehicleId (dstVehicleId msg))
    (cl:cons ':network (network msg))
))
