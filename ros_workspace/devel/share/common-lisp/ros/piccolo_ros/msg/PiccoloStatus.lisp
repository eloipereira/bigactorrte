; Auto-generated. Do not edit!


(cl:in-package piccolo_ros-msg)


;//! \htmlinclude PiccoloStatus.msg.html

(cl:defclass <PiccoloStatus> (roslisp-msg-protocol:ros-message)
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
   (orbitRadius
    :reader orbitRadius
    :initarg :orbitRadius
    :type cl:fixnum
    :initform 0)
   (trackerStatus
    :reader trackerStatus
    :initarg :trackerStatus
    :type cl:fixnum
    :initform 0)
   (timeToWp
    :reader timeToWp
    :initarg :timeToWp
    :type cl:fixnum
    :initform 0)
   (wpFrom
    :reader wpFrom
    :initarg :wpFrom
    :type cl:fixnum
    :initform 0)
   (wpTo
    :reader wpTo
    :initarg :wpTo
    :type cl:fixnum
    :initform 0)
   (airBoundaryViolated
    :reader airBoundaryViolated
    :initarg :airBoundaryViolated
    :type cl:boolean
    :initform cl:nil)
   (autopilotEngineKill
    :reader autopilotEngineKill
    :initarg :autopilotEngineKill
    :type cl:boolean
    :initform cl:nil)
   (commsTimeout
    :reader commsTimeout
    :initarg :commsTimeout
    :type cl:boolean
    :initform cl:nil)
   (fligthTimerElapsed
    :reader fligthTimerElapsed
    :initarg :fligthTimerElapsed
    :type cl:boolean
    :initform cl:nil)
   (fligthTermination
    :reader fligthTermination
    :initarg :fligthTermination
    :type cl:boolean
    :initform cl:nil)
   (gpsTimeout
    :reader gpsTimeout
    :initarg :gpsTimeout
    :type cl:boolean
    :initform cl:nil)
   (orbiting
    :reader orbiting
    :initarg :orbiting
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PiccoloStatus (<PiccoloStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PiccoloStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PiccoloStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piccolo_ros-msg:<PiccoloStatus> is deprecated: use piccolo_ros-msg:PiccoloStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:header-val is deprecated.  Use piccolo_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicleid-val :lambda-list '(m))
(cl:defmethod vehicleid-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vehicleid-val is deprecated.  Use piccolo_ros-msg:vehicleid instead.")
  (vehicleid m))

(cl:ensure-generic-function 'orbitRadius-val :lambda-list '(m))
(cl:defmethod orbitRadius-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbitRadius-val is deprecated.  Use piccolo_ros-msg:orbitRadius instead.")
  (orbitRadius m))

(cl:ensure-generic-function 'trackerStatus-val :lambda-list '(m))
(cl:defmethod trackerStatus-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:trackerStatus-val is deprecated.  Use piccolo_ros-msg:trackerStatus instead.")
  (trackerStatus m))

(cl:ensure-generic-function 'timeToWp-val :lambda-list '(m))
(cl:defmethod timeToWp-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:timeToWp-val is deprecated.  Use piccolo_ros-msg:timeToWp instead.")
  (timeToWp m))

(cl:ensure-generic-function 'wpFrom-val :lambda-list '(m))
(cl:defmethod wpFrom-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:wpFrom-val is deprecated.  Use piccolo_ros-msg:wpFrom instead.")
  (wpFrom m))

(cl:ensure-generic-function 'wpTo-val :lambda-list '(m))
(cl:defmethod wpTo-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:wpTo-val is deprecated.  Use piccolo_ros-msg:wpTo instead.")
  (wpTo m))

(cl:ensure-generic-function 'airBoundaryViolated-val :lambda-list '(m))
(cl:defmethod airBoundaryViolated-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:airBoundaryViolated-val is deprecated.  Use piccolo_ros-msg:airBoundaryViolated instead.")
  (airBoundaryViolated m))

(cl:ensure-generic-function 'autopilotEngineKill-val :lambda-list '(m))
(cl:defmethod autopilotEngineKill-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:autopilotEngineKill-val is deprecated.  Use piccolo_ros-msg:autopilotEngineKill instead.")
  (autopilotEngineKill m))

(cl:ensure-generic-function 'commsTimeout-val :lambda-list '(m))
(cl:defmethod commsTimeout-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:commsTimeout-val is deprecated.  Use piccolo_ros-msg:commsTimeout instead.")
  (commsTimeout m))

(cl:ensure-generic-function 'fligthTimerElapsed-val :lambda-list '(m))
(cl:defmethod fligthTimerElapsed-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:fligthTimerElapsed-val is deprecated.  Use piccolo_ros-msg:fligthTimerElapsed instead.")
  (fligthTimerElapsed m))

(cl:ensure-generic-function 'fligthTermination-val :lambda-list '(m))
(cl:defmethod fligthTermination-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:fligthTermination-val is deprecated.  Use piccolo_ros-msg:fligthTermination instead.")
  (fligthTermination m))

(cl:ensure-generic-function 'gpsTimeout-val :lambda-list '(m))
(cl:defmethod gpsTimeout-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:gpsTimeout-val is deprecated.  Use piccolo_ros-msg:gpsTimeout instead.")
  (gpsTimeout m))

(cl:ensure-generic-function 'orbiting-val :lambda-list '(m))
(cl:defmethod orbiting-val ((m <PiccoloStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:orbiting-val is deprecated.  Use piccolo_ros-msg:orbiting instead.")
  (orbiting m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PiccoloStatus>) ostream)
  "Serializes a message object of type '<PiccoloStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orbitRadius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trackerStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeToWp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeToWp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wpFrom)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wpTo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'airBoundaryViolated) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autopilotEngineKill) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'commsTimeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fligthTimerElapsed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fligthTermination) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gpsTimeout) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orbiting) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PiccoloStatus>) istream)
  "Deserializes a message object of type '<PiccoloStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orbitRadius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trackerStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeToWp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeToWp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wpFrom)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wpTo)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'airBoundaryViolated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'autopilotEngineKill) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'commsTimeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fligthTimerElapsed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fligthTermination) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gpsTimeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'orbiting) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PiccoloStatus>)))
  "Returns string type for a message object of type '<PiccoloStatus>"
  "piccolo_ros/PiccoloStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PiccoloStatus)))
  "Returns string type for a message object of type 'PiccoloStatus"
  "piccolo_ros/PiccoloStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PiccoloStatus>)))
  "Returns md5sum for a message object of type '<PiccoloStatus>"
  "269318ddb8948106dd3e47eca4424ca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PiccoloStatus)))
  "Returns md5sum for a message object of type 'PiccoloStatus"
  "269318ddb8948106dd3e47eca4424ca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PiccoloStatus>)))
  "Returns full string definition for message of type '<PiccoloStatus>"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%uint8 orbitRadius~%uint8 trackerStatus~%uint16 timeToWp~%uint8 wpFrom~%uint8 wpTo~%bool airBoundaryViolated~%bool autopilotEngineKill~%bool commsTimeout~%bool fligthTimerElapsed~%bool fligthTermination~%bool gpsTimeout~%bool orbiting~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PiccoloStatus)))
  "Returns full string definition for message of type 'PiccoloStatus"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%uint8 orbitRadius~%uint8 trackerStatus~%uint16 timeToWp~%uint8 wpFrom~%uint8 wpTo~%bool airBoundaryViolated~%bool autopilotEngineKill~%bool commsTimeout~%bool fligthTimerElapsed~%bool fligthTermination~%bool gpsTimeout~%bool orbiting~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PiccoloStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     1
     1
     2
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PiccoloStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PiccoloStatus
    (cl:cons ':header (header msg))
    (cl:cons ':vehicleid (vehicleid msg))
    (cl:cons ':orbitRadius (orbitRadius msg))
    (cl:cons ':trackerStatus (trackerStatus msg))
    (cl:cons ':timeToWp (timeToWp msg))
    (cl:cons ':wpFrom (wpFrom msg))
    (cl:cons ':wpTo (wpTo msg))
    (cl:cons ':airBoundaryViolated (airBoundaryViolated msg))
    (cl:cons ':autopilotEngineKill (autopilotEngineKill msg))
    (cl:cons ':commsTimeout (commsTimeout msg))
    (cl:cons ':fligthTimerElapsed (fligthTimerElapsed msg))
    (cl:cons ':fligthTermination (fligthTermination msg))
    (cl:cons ':gpsTimeout (gpsTimeout msg))
    (cl:cons ':orbiting (orbiting msg))
))
