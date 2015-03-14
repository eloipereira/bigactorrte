; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude MissionStateEstimate.msg.html

(cl:defclass <MissionStateEstimate> (roslisp-msg-protocol:ros-message)
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
   (tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector big_actor_msgs-msg:Task)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Task :initial-element (cl:make-instance 'big_actor_msgs-msg:Task))))
)

(cl:defclass MissionStateEstimate (<MissionStateEstimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStateEstimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStateEstimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<MissionStateEstimate> is deprecated: use big_actor_msgs-msg:MissionStateEstimate instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <MissionStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:timeStamp-val is deprecated.  Use big_actor_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'srcVehicleId-val :lambda-list '(m))
(cl:defmethod srcVehicleId-val ((m <MissionStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:srcVehicleId-val is deprecated.  Use big_actor_msgs-msg:srcVehicleId instead.")
  (srcVehicleId m))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <MissionStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:tasks-val is deprecated.  Use big_actor_msgs-msg:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStateEstimate>) ostream)
  "Serializes a message object of type '<MissionStateEstimate>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStateEstimate>) istream)
  "Deserializes a message object of type '<MissionStateEstimate>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tasks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tasks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Task))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStateEstimate>)))
  "Returns string type for a message object of type '<MissionStateEstimate>"
  "big_actor_msgs/MissionStateEstimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStateEstimate)))
  "Returns string type for a message object of type 'MissionStateEstimate"
  "big_actor_msgs/MissionStateEstimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStateEstimate>)))
  "Returns md5sum for a message object of type '<MissionStateEstimate>"
  "26069a11191f440ae886bb7af4e298be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStateEstimate)))
  "Returns md5sum for a message object of type 'MissionStateEstimate"
  "26069a11191f440ae886bb7af4e298be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStateEstimate>)))
  "Returns full string definition for message of type '<MissionStateEstimate>"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # Vehicle id of the sending vehicle~%Task[] tasks                  # Current tasks~%================================================================================~%MSG: big_actor_msgs/Task~%uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStateEstimate)))
  "Returns full string definition for message of type 'MissionStateEstimate"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # Vehicle id of the sending vehicle~%Task[] tasks                  # Current tasks~%================================================================================~%MSG: big_actor_msgs/Task~%uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStateEstimate>))
  (cl:+ 0
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStateEstimate>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStateEstimate
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':srcVehicleId (srcVehicleId msg))
    (cl:cons ':tasks (tasks msg))
))
