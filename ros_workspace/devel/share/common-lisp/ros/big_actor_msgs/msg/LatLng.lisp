; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude LatLng.msg.html

(cl:defclass <LatLng> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass LatLng (<LatLng>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LatLng>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LatLng)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<LatLng> is deprecated: use big_actor_msgs-msg:LatLng instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <LatLng>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:latitude-val is deprecated.  Use big_actor_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <LatLng>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:longitude-val is deprecated.  Use big_actor_msgs-msg:longitude instead.")
  (longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LatLng>) ostream)
  "Serializes a message object of type '<LatLng>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LatLng>) istream)
  "Deserializes a message object of type '<LatLng>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LatLng>)))
  "Returns string type for a message object of type '<LatLng>"
  "big_actor_msgs/LatLng")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LatLng)))
  "Returns string type for a message object of type 'LatLng"
  "big_actor_msgs/LatLng")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LatLng>)))
  "Returns md5sum for a message object of type '<LatLng>"
  "680c6dc7da65a2421a822205dcbdb600")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LatLng)))
  "Returns md5sum for a message object of type 'LatLng"
  "680c6dc7da65a2421a822205dcbdb600")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LatLng>)))
  "Returns full string definition for message of type '<LatLng>"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LatLng)))
  "Returns full string definition for message of type 'LatLng"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LatLng>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LatLng>))
  "Converts a ROS message object to a list"
  (cl:list 'LatLng
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
))
