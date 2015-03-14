; Auto-generated. Do not edit!


(cl:in-package piccolo_ros-msg)


;//! \htmlinclude PiccoloWaypoint.msg.html

(cl:defclass <PiccoloWaypoint> (roslisp-msg-protocol:ros-message)
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
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (deployParachute
    :reader deployParachute
    :initarg :deployParachute
    :type cl:boolean
    :initform cl:nil)
   (deployDrop
    :reader deployDrop
    :initarg :deployDrop
    :type cl:boolean
    :initform cl:nil)
   (orbitDirection
    :reader orbitDirection
    :initarg :orbitDirection
    :type cl:boolean
    :initform cl:nil)
   (cameraTarget
    :reader cameraTarget
    :initarg :cameraTarget
    :type cl:boolean
    :initform cl:nil)
   (landingPoint
    :reader landingPoint
    :initarg :landingPoint
    :type cl:boolean
    :initform cl:nil)
   (slopeControl
    :reader slopeControl
    :initarg :slopeControl
    :type cl:boolean
    :initform cl:nil)
   (lightsOn
    :reader lightsOn
    :initarg :lightsOn
    :type cl:boolean
    :initform cl:nil)
   (preTurn
    :reader preTurn
    :initarg :preTurn
    :type cl:boolean
    :initform cl:nil)
   (orbitRadius
    :reader orbitRadius
    :initarg :orbitRadius
    :type cl:fixnum
    :initform 0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (windFind
    :reader windFind
    :initarg :windFind
    :type cl:fixnum
    :initform 0)
   (orbitTime
    :reader orbitTime
    :initarg :orbitTime
    :type cl:fixnum
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (next
    :reader next
    :initarg :next
    :type cl:fixnum
    :initform 0)
   (user
    :reader user
    :initarg :user
    :type cl:fixnum
    :initform 0)
   (orbitAbove
    :reader orbitAbove
    :initarg :orbitAbove
    :type cl:boolean
    :initform cl:nil)
   (orbitBelow
    :reader orbitBelow
    :initarg :orbitBelow
    :type cl:boolean
    :initform cl:nil)
   (hoverPoint
    :reader hoverPoint
    :initarg :hoverPoint
    :type cl:boolean
    :initform cl:nil)
   (altitudeToGround
    :reader altitudeToGround
    :initarg :altitudeToGround
    :type cl:boolean
    :initform cl:nil)
   (orbitMultiplier50
    :reader orbitMultiplier50
    :initarg :orbitMultiplier50
    :type cl:boolean
    :initform cl:nil)
   (altLSB
    :reader altLSB
    :initarg :altLSB
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PiccoloWaypoint (<PiccoloWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PiccoloWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PiccoloWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piccolo_ros-msg:<PiccoloWaypoint> is deprecated: use piccolo_ros-msg:PiccoloWaypoint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:header-val is deprecated.  Use piccolo_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicleid-val :lambda-list '(m))
(cl:defmethod vehicleid-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vehicleid-val is deprecated.  Use piccolo_ros-msg:vehicleid instead.")
  (vehicleid m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:latitude-val is deprecated.  Use piccolo_ros-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:longitude-val is deprecated.  Use piccolo_ros-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'deployParachute-val :lambda-list '(m))
(cl:defmethod deployParachute-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:deployParachute-val is deprecated.  Use piccolo_ros-msg:deployParachute instead.")
  (deployParachute m))

(cl:ensure-generic-function 'deployDrop-val :lambda-list '(m))
(cl:defmethod deployDrop-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:deployDrop-val is deprecated.  Use piccolo_ros-msg:deployDrop instead.")
  (deployDrop m))

(cl:ensure-generic-function 'orbitDirection-val :lambda-list '(m))
(cl:defmethod orbitDirection-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitDirection-val is deprecated.  Use piccolo_ros-msg:orbitDirection instead.")
  (orbitDirection m))

(cl:ensure-generic-function 'cameraTarget-val :lambda-list '(m))
(cl:defmethod cameraTarget-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:cameraTarget-val is deprecated.  Use piccolo_ros-msg:cameraTarget instead.")
  (cameraTarget m))

(cl:ensure-generic-function 'landingPoint-val :lambda-list '(m))
(cl:defmethod landingPoint-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:landingPoint-val is deprecated.  Use piccolo_ros-msg:landingPoint instead.")
  (landingPoint m))

(cl:ensure-generic-function 'slopeControl-val :lambda-list '(m))
(cl:defmethod slopeControl-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:slopeControl-val is deprecated.  Use piccolo_ros-msg:slopeControl instead.")
  (slopeControl m))

(cl:ensure-generic-function 'lightsOn-val :lambda-list '(m))
(cl:defmethod lightsOn-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:lightsOn-val is deprecated.  Use piccolo_ros-msg:lightsOn instead.")
  (lightsOn m))

(cl:ensure-generic-function 'preTurn-val :lambda-list '(m))
(cl:defmethod preTurn-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:preTurn-val is deprecated.  Use piccolo_ros-msg:preTurn instead.")
  (preTurn m))

(cl:ensure-generic-function 'orbitRadius-val :lambda-list '(m))
(cl:defmethod orbitRadius-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitRadius-val is deprecated.  Use piccolo_ros-msg:orbitRadius instead.")
  (orbitRadius m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:altitude-val is deprecated.  Use piccolo_ros-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'windFind-val :lambda-list '(m))
(cl:defmethod windFind-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:windFind-val is deprecated.  Use piccolo_ros-msg:windFind instead.")
  (windFind m))

(cl:ensure-generic-function 'orbitTime-val :lambda-list '(m))
(cl:defmethod orbitTime-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitTime-val is deprecated.  Use piccolo_ros-msg:orbitTime instead.")
  (orbitTime m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:index-val is deprecated.  Use piccolo_ros-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'next-val :lambda-list '(m))
(cl:defmethod next-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:next-val is deprecated.  Use piccolo_ros-msg:next instead.")
  (next m))

(cl:ensure-generic-function 'user-val :lambda-list '(m))
(cl:defmethod user-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:user-val is deprecated.  Use piccolo_ros-msg:user instead.")
  (user m))

(cl:ensure-generic-function 'orbitAbove-val :lambda-list '(m))
(cl:defmethod orbitAbove-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitAbove-val is deprecated.  Use piccolo_ros-msg:orbitAbove instead.")
  (orbitAbove m))

(cl:ensure-generic-function 'orbitBelow-val :lambda-list '(m))
(cl:defmethod orbitBelow-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitBelow-val is deprecated.  Use piccolo_ros-msg:orbitBelow instead.")
  (orbitBelow m))

(cl:ensure-generic-function 'hoverPoint-val :lambda-list '(m))
(cl:defmethod hoverPoint-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:hoverPoint-val is deprecated.  Use piccolo_ros-msg:hoverPoint instead.")
  (hoverPoint m))

(cl:ensure-generic-function 'altitudeToGround-val :lambda-list '(m))
(cl:defmethod altitudeToGround-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:altitudeToGround-val is deprecated.  Use piccolo_ros-msg:altitudeToGround instead.")
  (altitudeToGround m))

(cl:ensure-generic-function 'orbitMultiplier50-val :lambda-list '(m))
(cl:defmethod orbitMultiplier50-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitMultiplier50-val is deprecated.  Use piccolo_ros-msg:orbitMultiplier50 instead.")
  (orbitMultiplier50 m))

(cl:ensure-generic-function 'altLSB-val :lambda-list '(m))
(cl:defmethod altLSB-val ((m <PiccoloWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:altLSB-val is deprecated.  Use piccolo_ros-msg:altLSB instead.")
  (altLSB m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PiccoloWaypoint>) ostream)
  "Serializes a message object of type '<PiccoloWaypoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'deployParachute) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'deployDrop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orbitDirection) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cameraTarget) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'landingPoint) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'slopeControl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lightsOn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'preTurn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orbitRadius)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'windFind)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orbitTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orbitAbove) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orbitBelow) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hoverPoint) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'altitudeToGround) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orbitMultiplier50) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altLSB)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PiccoloWaypoint>) istream)
  "Deserializes a message object of type '<PiccoloWaypoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'deployParachute) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'deployDrop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'orbitDirection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cameraTarget) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'landingPoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'slopeControl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lightsOn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'preTurn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orbitRadius)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'windFind)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orbitTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'user)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orbitAbove) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'orbitBelow) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hoverPoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'altitudeToGround) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'orbitMultiplier50) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altLSB)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PiccoloWaypoint>)))
  "Returns string type for a message object of type '<PiccoloWaypoint>"
  "piccolo_ros/PiccoloWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PiccoloWaypoint)))
  "Returns string type for a message object of type 'PiccoloWaypoint"
  "piccolo_ros/PiccoloWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PiccoloWaypoint>)))
  "Returns md5sum for a message object of type '<PiccoloWaypoint>"
  "94cf365c5d73022abc5ccff9d924c6bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PiccoloWaypoint)))
  "Returns md5sum for a message object of type 'PiccoloWaypoint"
  "94cf365c5d73022abc5ccff9d924c6bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PiccoloWaypoint>)))
  "Returns full string definition for message of type '<PiccoloWaypoint>"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%float32 latitude~%float32 longitude~%bool deployParachute~%bool deployDrop~%bool orbitDirection~%bool cameraTarget~%bool landingPoint~%bool slopeControl~%bool lightsOn~%bool preTurn~%uint8 orbitRadius~%float32 altitude~%uint8 windFind~%uint8 orbitTime~%uint8 index~%uint8 next~%uint8 user~%bool orbitAbove~%bool orbitBelow~%bool hoverPoint~%bool altitudeToGround~%bool orbitMultiplier50~%uint8 altLSB~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PiccoloWaypoint)))
  "Returns full string definition for message of type 'PiccoloWaypoint"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%float32 latitude~%float32 longitude~%bool deployParachute~%bool deployDrop~%bool orbitDirection~%bool cameraTarget~%bool landingPoint~%bool slopeControl~%bool lightsOn~%bool preTurn~%uint8 orbitRadius~%float32 altitude~%uint8 windFind~%uint8 orbitTime~%uint8 index~%uint8 next~%uint8 user~%bool orbitAbove~%bool orbitBelow~%bool hoverPoint~%bool altitudeToGround~%bool orbitMultiplier50~%uint8 altLSB~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PiccoloWaypoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PiccoloWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PiccoloWaypoint
    (cl:cons ':header (header msg))
    (cl:cons ':vehicleid (vehicleid msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':deployParachute (deployParachute msg))
    (cl:cons ':deployDrop (deployDrop msg))
    (cl:cons ':orbitDirection (orbitDirection msg))
    (cl:cons ':cameraTarget (cameraTarget msg))
    (cl:cons ':landingPoint (landingPoint msg))
    (cl:cons ':slopeControl (slopeControl msg))
    (cl:cons ':lightsOn (lightsOn msg))
    (cl:cons ':preTurn (preTurn msg))
    (cl:cons ':orbitRadius (orbitRadius msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':windFind (windFind msg))
    (cl:cons ':orbitTime (orbitTime msg))
    (cl:cons ':index (index msg))
    (cl:cons ':next (next msg))
    (cl:cons ':user (user msg))
    (cl:cons ':orbitAbove (orbitAbove msg))
    (cl:cons ':orbitBelow (orbitBelow msg))
    (cl:cons ':hoverPoint (hoverPoint msg))
    (cl:cons ':altitudeToGround (altitudeToGround msg))
    (cl:cons ':orbitMultiplier50 (orbitMultiplier50 msg))
    (cl:cons ':altLSB (altLSB msg))
))
