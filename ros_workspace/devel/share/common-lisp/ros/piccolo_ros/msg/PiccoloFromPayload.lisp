; Auto-generated. Do not edit!


(cl:in-package piccolo_ros-msg)


;//! \htmlinclude PiccoloFromPayload.msg.html

(cl:defclass <PiccoloFromPayload> (roslisp-msg-protocol:ros-message)
  ((vehicleid
    :reader vehicleid
    :initarg :vehicleid
    :type cl:fixnum
    :initform 0)
   (len
    :reader len
    :initarg :len
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PiccoloFromPayload (<PiccoloFromPayload>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PiccoloFromPayload>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PiccoloFromPayload)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piccolo_ros-msg:<PiccoloFromPayload> is deprecated: use piccolo_ros-msg:PiccoloFromPayload instead.")))

(cl:ensure-generic-function 'vehicleid-val :lambda-list '(m))
(cl:defmethod vehicleid-val ((m <PiccoloFromPayload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vehicleid-val is deprecated.  Use piccolo_ros-msg:vehicleid instead.")
  (vehicleid m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <PiccoloFromPayload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:len-val is deprecated.  Use piccolo_ros-msg:len instead.")
  (len m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <PiccoloFromPayload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:data-val is deprecated.  Use piccolo_ros-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PiccoloFromPayload>) ostream)
  "Serializes a message object of type '<PiccoloFromPayload>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'len)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PiccoloFromPayload>) istream)
  "Deserializes a message object of type '<PiccoloFromPayload>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PiccoloFromPayload>)))
  "Returns string type for a message object of type '<PiccoloFromPayload>"
  "piccolo_ros/PiccoloFromPayload")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PiccoloFromPayload)))
  "Returns string type for a message object of type 'PiccoloFromPayload"
  "piccolo_ros/PiccoloFromPayload")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PiccoloFromPayload>)))
  "Returns md5sum for a message object of type '<PiccoloFromPayload>"
  "5582c63616d9b2ddbe426b48a82c81be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PiccoloFromPayload)))
  "Returns md5sum for a message object of type 'PiccoloFromPayload"
  "5582c63616d9b2ddbe426b48a82c81be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PiccoloFromPayload>)))
  "Returns full string definition for message of type '<PiccoloFromPayload>"
  (cl:format cl:nil "uint16 vehicleid~%int8 len~%int8[]  data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PiccoloFromPayload)))
  "Returns full string definition for message of type 'PiccoloFromPayload"
  (cl:format cl:nil "uint16 vehicleid~%int8 len~%int8[]  data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PiccoloFromPayload>))
  (cl:+ 0
     2
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PiccoloFromPayload>))
  "Converts a ROS message object to a list"
  (cl:list 'PiccoloFromPayload
    (cl:cons ':vehicleid (vehicleid msg))
    (cl:cons ':len (len msg))
    (cl:cons ':data (data msg))
))
