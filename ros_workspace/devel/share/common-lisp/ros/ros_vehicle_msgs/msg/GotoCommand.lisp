; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-msg)


;//! \htmlinclude GotoCommand.msg.html

(cl:defclass <GotoCommand> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0)
   (waypoint
    :reader waypoint
    :initarg :waypoint
    :type ros_vehicle_msgs-msg:Waypoint
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:Waypoint)))
)

(cl:defclass GotoCommand (<GotoCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GotoCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GotoCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-msg:<GotoCommand> is deprecated: use ros_vehicle_msgs-msg:GotoCommand instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <GotoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:vehicleId-val is deprecated.  Use ros_vehicle_msgs-msg:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <GotoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:waypoint-val is deprecated.  Use ros_vehicle_msgs-msg:waypoint instead.")
  (waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GotoCommand>) ostream)
  "Serializes a message object of type '<GotoCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GotoCommand>) istream)
  "Deserializes a message object of type '<GotoCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GotoCommand>)))
  "Returns string type for a message object of type '<GotoCommand>"
  "ros_vehicle_msgs/GotoCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GotoCommand)))
  "Returns string type for a message object of type 'GotoCommand"
  "ros_vehicle_msgs/GotoCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GotoCommand>)))
  "Returns md5sum for a message object of type '<GotoCommand>"
  "3357d91a25a8860d9af9daa5953e10a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GotoCommand)))
  "Returns md5sum for a message object of type 'GotoCommand"
  "3357d91a25a8860d9af9daa5953e10a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GotoCommand>)))
  "Returns full string definition for message of type '<GotoCommand>"
  (cl:format cl:nil "uint64 vehicleId~%Waypoint waypoint~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GotoCommand)))
  "Returns full string definition for message of type 'GotoCommand"
  (cl:format cl:nil "uint64 vehicleId~%Waypoint waypoint~%================================================================================~%MSG: ros_vehicle_msgs/Waypoint~%Header                      header~%uint16                      waypointId~%uint16                      nextWp~%uint16                      previousWp~%bool                        start~%bool                        stop~%bool                        home~%big_actor_msgs/LatLngAlt    position~%LoiterData                  loiter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: ros_vehicle_msgs/LoiterData~%bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GotoCommand>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GotoCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'GotoCommand
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':waypoint (waypoint msg))
))
