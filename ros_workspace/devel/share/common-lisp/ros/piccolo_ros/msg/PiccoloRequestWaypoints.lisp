; Auto-generated. Do not edit!


(cl:in-package piccolo_ros-msg)


;//! \htmlinclude PiccoloRequestWaypoints.msg.html

(cl:defclass <PiccoloRequestWaypoints> (roslisp-msg-protocol:ros-message)
  ((vehicleid
    :reader vehicleid
    :initarg :vehicleid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PiccoloRequestWaypoints (<PiccoloRequestWaypoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PiccoloRequestWaypoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PiccoloRequestWaypoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piccolo_ros-msg:<PiccoloRequestWaypoints> is deprecated: use piccolo_ros-msg:PiccoloRequestWaypoints instead.")))

(cl:ensure-generic-function 'vehicleid-val :lambda-list '(m))
(cl:defmethod vehicleid-val ((m <PiccoloRequestWaypoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vehicleid-val is deprecated.  Use piccolo_ros-msg:vehicleid instead.")
  (vehicleid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PiccoloRequestWaypoints>) ostream)
  "Serializes a message object of type '<PiccoloRequestWaypoints>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PiccoloRequestWaypoints>) istream)
  "Deserializes a message object of type '<PiccoloRequestWaypoints>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PiccoloRequestWaypoints>)))
  "Returns string type for a message object of type '<PiccoloRequestWaypoints>"
  "piccolo_ros/PiccoloRequestWaypoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PiccoloRequestWaypoints)))
  "Returns string type for a message object of type 'PiccoloRequestWaypoints"
  "piccolo_ros/PiccoloRequestWaypoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PiccoloRequestWaypoints>)))
  "Returns md5sum for a message object of type '<PiccoloRequestWaypoints>"
  "e54efa879f1f58185d067bfbdfa0b0b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PiccoloRequestWaypoints)))
  "Returns md5sum for a message object of type 'PiccoloRequestWaypoints"
  "e54efa879f1f58185d067bfbdfa0b0b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PiccoloRequestWaypoints>)))
  "Returns full string definition for message of type '<PiccoloRequestWaypoints>"
  (cl:format cl:nil "uint16 vehicleid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PiccoloRequestWaypoints)))
  "Returns full string definition for message of type 'PiccoloRequestWaypoints"
  (cl:format cl:nil "uint16 vehicleid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PiccoloRequestWaypoints>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PiccoloRequestWaypoints>))
  "Converts a ROS message object to a list"
  (cl:list 'PiccoloRequestWaypoints
    (cl:cons ':vehicleid (vehicleid msg))
))
