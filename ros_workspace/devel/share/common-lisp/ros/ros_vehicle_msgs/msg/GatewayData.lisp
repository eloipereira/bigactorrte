; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-msg)


;//! \htmlinclude GatewayData.msg.html

(cl:defclass <GatewayData> (roslisp-msg-protocol:ros-message)
  ((src_id
    :reader src_id
    :initarg :src_id
    :type cl:integer
    :initform 0)
   (msg_type
    :reader msg_type
    :initarg :msg_type
    :type cl:fixnum
    :initform 0)
   (serialized
    :reader serialized
    :initarg :serialized
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GatewayData (<GatewayData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GatewayData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GatewayData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-msg:<GatewayData> is deprecated: use ros_vehicle_msgs-msg:GatewayData instead.")))

(cl:ensure-generic-function 'src_id-val :lambda-list '(m))
(cl:defmethod src_id-val ((m <GatewayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:src_id-val is deprecated.  Use ros_vehicle_msgs-msg:src_id instead.")
  (src_id m))

(cl:ensure-generic-function 'msg_type-val :lambda-list '(m))
(cl:defmethod msg_type-val ((m <GatewayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:msg_type-val is deprecated.  Use ros_vehicle_msgs-msg:msg_type instead.")
  (msg_type m))

(cl:ensure-generic-function 'serialized-val :lambda-list '(m))
(cl:defmethod serialized-val ((m <GatewayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:serialized-val is deprecated.  Use ros_vehicle_msgs-msg:serialized instead.")
  (serialized m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GatewayData>)))
    "Constants for message type '<GatewayData>"
  '((:GD_MSE . 0)
    (:GD_SSE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GatewayData)))
    "Constants for message type 'GatewayData"
  '((:GD_MSE . 0)
    (:GD_SSE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GatewayData>) ostream)
  "Serializes a message object of type '<GatewayData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'src_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'src_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'src_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'serialized))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'serialized))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GatewayData>) istream)
  "Deserializes a message object of type '<GatewayData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'src_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'src_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'src_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'src_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'serialized) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'serialized)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GatewayData>)))
  "Returns string type for a message object of type '<GatewayData>"
  "ros_vehicle_msgs/GatewayData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GatewayData)))
  "Returns string type for a message object of type 'GatewayData"
  "ros_vehicle_msgs/GatewayData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GatewayData>)))
  "Returns md5sum for a message object of type '<GatewayData>"
  "35816ea244f328d6667604276bbb7666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GatewayData)))
  "Returns md5sum for a message object of type 'GatewayData"
  "35816ea244f328d6667604276bbb7666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GatewayData>)))
  "Returns full string definition for message of type '<GatewayData>"
  (cl:format cl:nil "uint32 src_id~%uint8 msg_type~%    uint8 GD_MSE=0~%    uint8 GD_SSE=1~%uint8[] serialized     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GatewayData)))
  "Returns full string definition for message of type 'GatewayData"
  (cl:format cl:nil "uint32 src_id~%uint8 msg_type~%    uint8 GD_MSE=0~%    uint8 GD_SSE=1~%uint8[] serialized     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GatewayData>))
  (cl:+ 0
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'serialized) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GatewayData>))
  "Converts a ROS message object to a list"
  (cl:list 'GatewayData
    (cl:cons ':src_id (src_id msg))
    (cl:cons ':msg_type (msg_type msg))
    (cl:cons ':serialized (serialized msg))
))
