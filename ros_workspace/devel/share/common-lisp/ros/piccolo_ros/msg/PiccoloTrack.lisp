; Auto-generated. Do not edit!


(cl:in-package piccolo_ros-msg)


;//! \htmlinclude PiccoloTrack.msg.html

(cl:defclass <PiccoloTrack> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicleid
    :reader vehicleid
    :initarg :vehicleid
    :type cl:fixnum
    :initform 0)
   (to
    :reader to
    :initarg :to
    :type cl:fixnum
    :initform 0)
   (go_to
    :reader go_to
    :initarg :go_to
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PiccoloTrack (<PiccoloTrack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PiccoloTrack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PiccoloTrack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piccolo_ros-msg:<PiccoloTrack> is deprecated: use piccolo_ros-msg:PiccoloTrack instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PiccoloTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:header-val is deprecated.  Use piccolo_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicleid-val :lambda-list '(m))
(cl:defmethod vehicleid-val ((m <PiccoloTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vehicleid-val is deprecated.  Use piccolo_ros-msg:vehicleid instead.")
  (vehicleid m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <PiccoloTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:to-val is deprecated.  Use piccolo_ros-msg:to instead.")
  (to m))

(cl:ensure-generic-function 'go_to-val :lambda-list '(m))
(cl:defmethod go_to-val ((m <PiccoloTrack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:go_to-val is deprecated.  Use piccolo_ros-msg:go_to instead.")
  (go_to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PiccoloTrack>) ostream)
  "Serializes a message object of type '<PiccoloTrack>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'to)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'go_to)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PiccoloTrack>) istream)
  "Deserializes a message object of type '<PiccoloTrack>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'go_to) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PiccoloTrack>)))
  "Returns string type for a message object of type '<PiccoloTrack>"
  "piccolo_ros/PiccoloTrack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PiccoloTrack)))
  "Returns string type for a message object of type 'PiccoloTrack"
  "piccolo_ros/PiccoloTrack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PiccoloTrack>)))
  "Returns md5sum for a message object of type '<PiccoloTrack>"
  "037632d76c7959066836c961703c068d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PiccoloTrack)))
  "Returns md5sum for a message object of type 'PiccoloTrack"
  "037632d76c7959066836c961703c068d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PiccoloTrack>)))
  "Returns full string definition for message of type '<PiccoloTrack>"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%int8 to~%int8 go_to~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PiccoloTrack)))
  "Returns full string definition for message of type 'PiccoloTrack"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%int8 to~%int8 go_to~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PiccoloTrack>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PiccoloTrack>))
  "Converts a ROS message object to a list"
  (cl:list 'PiccoloTrack
    (cl:cons ':header (header msg))
    (cl:cons ':vehicleid (vehicleid msg))
    (cl:cons ':to (to msg))
    (cl:cons ':go_to (go_to msg))
))
