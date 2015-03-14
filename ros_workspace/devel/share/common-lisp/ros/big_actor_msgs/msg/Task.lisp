; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude Task.msg.html

(cl:defclass <Task> (roslisp-msg-protocol:ros-message)
  ((taskStamp
    :reader taskStamp
    :initarg :taskStamp
    :type cl:integer
    :initform 0)
   (taskId
    :reader taskId
    :initarg :taskId
    :type cl:integer
    :initform 0)
   (taskType
    :reader taskType
    :initarg :taskType
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0)
   (creationStamp
    :reader creationStamp
    :initarg :creationStamp
    :type cl:integer
    :initform 0)
   (parameters
    :reader parameters
    :initarg :parameters
    :type cl:string
    :initform ""))
)

(cl:defclass Task (<Task>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Task>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Task)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<Task> is deprecated: use big_actor_msgs-msg:Task instead.")))

(cl:ensure-generic-function 'taskStamp-val :lambda-list '(m))
(cl:defmethod taskStamp-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:taskStamp-val is deprecated.  Use big_actor_msgs-msg:taskStamp instead.")
  (taskStamp m))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:taskId-val is deprecated.  Use big_actor_msgs-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'taskType-val :lambda-list '(m))
(cl:defmethod taskType-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:taskType-val is deprecated.  Use big_actor_msgs-msg:taskType instead.")
  (taskType m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:status-val is deprecated.  Use big_actor_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicleId-val is deprecated.  Use big_actor_msgs-msg:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'creationStamp-val :lambda-list '(m))
(cl:defmethod creationStamp-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:creationStamp-val is deprecated.  Use big_actor_msgs-msg:creationStamp instead.")
  (creationStamp m))

(cl:ensure-generic-function 'parameters-val :lambda-list '(m))
(cl:defmethod parameters-val ((m <Task>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:parameters-val is deprecated.  Use big_actor_msgs-msg:parameters instead.")
  (parameters m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Task>)))
    "Constants for message type '<Task>"
  '((:TT_NONE . 0)
    (:TT_SEARCH . 1)
    (:TT_GOTO_WP . 2)
    (:TT_TRACK . 3)
    (:TT_GOTO_LOCATION . 4)
    (:TT_RETURN_HOME . 5)
    (:TT_HOLD . 6)
    (:TT_VIDEOSTREAM . 7)
    (:TS_NONE . 0)
    (:TS_TODO . 1)
    (:TS_IN_PROGRESS . 2)
    (:TS_DONE . 3)
    (:TS_ASSIGNED . 4)
    (:TS_CANCELED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Task)))
    "Constants for message type 'Task"
  '((:TT_NONE . 0)
    (:TT_SEARCH . 1)
    (:TT_GOTO_WP . 2)
    (:TT_TRACK . 3)
    (:TT_GOTO_LOCATION . 4)
    (:TT_RETURN_HOME . 5)
    (:TT_HOLD . 6)
    (:TT_VIDEOSTREAM . 7)
    (:TS_NONE . 0)
    (:TS_TODO . 1)
    (:TS_IN_PROGRESS . 2)
    (:TS_DONE . 3)
    (:TS_ASSIGNED . 4)
    (:TS_CANCELED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Task>) ostream)
  "Serializes a message object of type '<Task>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'taskStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'creationStamp)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Task>) istream)
  "Deserializes a message object of type '<Task>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'taskStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'creationStamp)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameters) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameters) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Task>)))
  "Returns string type for a message object of type '<Task>"
  "big_actor_msgs/Task")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Task)))
  "Returns string type for a message object of type 'Task"
  "big_actor_msgs/Task")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Task>)))
  "Returns md5sum for a message object of type '<Task>"
  "148edaf166469545aee51675136822bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Task)))
  "Returns md5sum for a message object of type 'Task"
  "148edaf166469545aee51675136822bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Task>)))
  "Returns full string definition for message of type '<Task>"
  (cl:format cl:nil "uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Task)))
  "Returns full string definition for message of type 'Task"
  (cl:format cl:nil "uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Task>))
  (cl:+ 0
     8
     4
     4
     1
     8
     8
     4 (cl:length (cl:slot-value msg 'parameters))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Task>))
  "Converts a ROS message object to a list"
  (cl:list 'Task
    (cl:cons ':taskStamp (taskStamp msg))
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':taskType (taskType msg))
    (cl:cons ':status (status msg))
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':creationStamp (creationStamp msg))
    (cl:cons ':parameters (parameters msg))
))
