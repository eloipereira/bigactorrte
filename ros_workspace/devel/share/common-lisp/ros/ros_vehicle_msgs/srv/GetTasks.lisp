; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude GetTasks-request.msg.html

(cl:defclass <GetTasks-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTasks-request (<GetTasks-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTasks-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTasks-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetTasks-request> is deprecated: use ros_vehicle_msgs-srv:GetTasks-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTasks-request>) ostream)
  "Serializes a message object of type '<GetTasks-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTasks-request>) istream)
  "Deserializes a message object of type '<GetTasks-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTasks-request>)))
  "Returns string type for a service object of type '<GetTasks-request>"
  "ros_vehicle_msgs/GetTasksRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTasks-request)))
  "Returns string type for a service object of type 'GetTasks-request"
  "ros_vehicle_msgs/GetTasksRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTasks-request>)))
  "Returns md5sum for a message object of type '<GetTasks-request>"
  "96de1f9d666f3aee662a92ef16988af0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTasks-request)))
  "Returns md5sum for a message object of type 'GetTasks-request"
  "96de1f9d666f3aee662a92ef16988af0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTasks-request>)))
  "Returns full string definition for message of type '<GetTasks-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTasks-request)))
  "Returns full string definition for message of type 'GetTasks-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTasks-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTasks-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTasks-request
))
;//! \htmlinclude GetTasks-response.msg.html

(cl:defclass <GetTasks-response> (roslisp-msg-protocol:ros-message)
  ((tasks
    :reader tasks
    :initarg :tasks
    :type (cl:vector big_actor_msgs-msg:Task)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Task :initial-element (cl:make-instance 'big_actor_msgs-msg:Task))))
)

(cl:defclass GetTasks-response (<GetTasks-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTasks-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTasks-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<GetTasks-response> is deprecated: use ros_vehicle_msgs-srv:GetTasks-response instead.")))

(cl:ensure-generic-function 'tasks-val :lambda-list '(m))
(cl:defmethod tasks-val ((m <GetTasks-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:tasks-val is deprecated.  Use ros_vehicle_msgs-srv:tasks instead.")
  (tasks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTasks-response>) ostream)
  "Serializes a message object of type '<GetTasks-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tasks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tasks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTasks-response>) istream)
  "Deserializes a message object of type '<GetTasks-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTasks-response>)))
  "Returns string type for a service object of type '<GetTasks-response>"
  "ros_vehicle_msgs/GetTasksResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTasks-response)))
  "Returns string type for a service object of type 'GetTasks-response"
  "ros_vehicle_msgs/GetTasksResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTasks-response>)))
  "Returns md5sum for a message object of type '<GetTasks-response>"
  "96de1f9d666f3aee662a92ef16988af0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTasks-response)))
  "Returns md5sum for a message object of type 'GetTasks-response"
  "96de1f9d666f3aee662a92ef16988af0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTasks-response>)))
  "Returns full string definition for message of type '<GetTasks-response>"
  (cl:format cl:nil "big_actor_msgs/Task[] tasks~%~%================================================================================~%MSG: big_actor_msgs/Task~%uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTasks-response)))
  "Returns full string definition for message of type 'GetTasks-response"
  (cl:format cl:nil "big_actor_msgs/Task[] tasks~%~%================================================================================~%MSG: big_actor_msgs/Task~%uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTasks-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tasks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTasks-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTasks-response
    (cl:cons ':tasks (tasks msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTasks)))
  'GetTasks-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTasks)))
  'GetTasks-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTasks)))
  "Returns string type for a service object of type '<GetTasks>"
  "ros_vehicle_msgs/GetTasks")