; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude Network.msg.html

(cl:defclass <Network> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (address
    :reader address
    :initarg :address
    :type cl:integer
    :initform 0)
   (mask
    :reader mask
    :initarg :mask
    :type cl:integer
    :initform 0))
)

(cl:defclass Network (<Network>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Network>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Network)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<Network> is deprecated: use big_actor_msgs-msg:Network instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <Network>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:timeStamp-val is deprecated.  Use big_actor_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Network>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:type-val is deprecated.  Use big_actor_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <Network>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:address-val is deprecated.  Use big_actor_msgs-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <Network>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:mask-val is deprecated.  Use big_actor_msgs-msg:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Network>)))
    "Constants for message type '<Network>"
  '((:NT_NONE . 0)
    (:NT_ETHERNET_10M . 1)
    (:NT_ETHERNET_100M . 2)
    (:NT_ETHERNET_1G . 3)
    (:NT_ETHERNET_10G . 4)
    (:NT_WIFI_2MB . 10)
    (:NT_WIFI_11MB . 11)
    (:NT_WIFI_27MB . 12)
    (:NT_WIFI_54MB . 13)
    (:NT_WIFI_600MB . 14)
    (:NT_WIFI_1300MB . 15)
    (:NT_WIFI_7000MB . 16)
    (:NT_MESH_500KB . 20)
    (:NT_ACOUSTIC_7KB . 30)
    (:NT_ACOUSTIC_9KB . 31)
    (:NT_ACOUSTIC_14KB . 32)
    (:NT_ACOUSTIC_31KB . 33)
    (:NT_PICCOLO . 40)
    (:NT_AIS . 50))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Network)))
    "Constants for message type 'Network"
  '((:NT_NONE . 0)
    (:NT_ETHERNET_10M . 1)
    (:NT_ETHERNET_100M . 2)
    (:NT_ETHERNET_1G . 3)
    (:NT_ETHERNET_10G . 4)
    (:NT_WIFI_2MB . 10)
    (:NT_WIFI_11MB . 11)
    (:NT_WIFI_27MB . 12)
    (:NT_WIFI_54MB . 13)
    (:NT_WIFI_600MB . 14)
    (:NT_WIFI_1300MB . 15)
    (:NT_WIFI_7000MB . 16)
    (:NT_MESH_500KB . 20)
    (:NT_ACOUSTIC_7KB . 30)
    (:NT_ACOUSTIC_9KB . 31)
    (:NT_ACOUSTIC_14KB . 32)
    (:NT_ACOUSTIC_31KB . 33)
    (:NT_PICCOLO . 40)
    (:NT_AIS . 50))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Network>) ostream)
  "Serializes a message object of type '<Network>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Network>) istream)
  "Deserializes a message object of type '<Network>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Network>)))
  "Returns string type for a message object of type '<Network>"
  "big_actor_msgs/Network")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Network)))
  "Returns string type for a message object of type 'Network"
  "big_actor_msgs/Network")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Network>)))
  "Returns md5sum for a message object of type '<Network>"
  "554ce9273c98d8bffe7c601a04b41824")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Network)))
  "Returns md5sum for a message object of type 'Network"
  "554ce9273c98d8bffe7c601a04b41824")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Network>)))
  "Returns full string definition for message of type '<Network>"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Network)))
  "Returns full string definition for message of type 'Network"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Network>))
  (cl:+ 0
     8
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Network>))
  "Converts a ROS message object to a list"
  (cl:list 'Network
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':type (type msg))
    (cl:cons ':address (address msg))
    (cl:cons ':mask (mask msg))
))
