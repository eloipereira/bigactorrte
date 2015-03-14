; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AddTask-request.msg.html

(cl:defclass <AddTask-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type big_actor_msgs-msg:Task
    :initform (cl:make-instance 'big_actor_msgs-msg:Task))
   (update
    :reader update
    :initarg :update
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddTask-request (<AddTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AddTask-request> is deprecated: use ros_vehicle_msgs-srv:AddTask-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <AddTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:task-val is deprecated.  Use ros_vehicle_msgs-srv:task instead.")
  (task m))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <AddTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:update-val is deprecated.  Use ros_vehicle_msgs-srv:update instead.")
  (update m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTask-request>) ostream)
  "Serializes a message object of type '<AddTask-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'update) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTask-request>) istream)
  "Deserializes a message object of type '<AddTask-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task) istream)
    (cl:setf (cl:slot-value msg 'update) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTask-request>)))
  "Returns string type for a service object of type '<AddTask-request>"
  "ros_vehicle_msgs/AddTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTask-request)))
  "Returns string type for a service object of type 'AddTask-request"
  "ros_vehicle_msgs/AddTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTask-request>)))
  "Returns md5sum for a message object of type '<AddTask-request>"
  "5295bbfb15c328f29e782719ddf57d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTask-request)))
  "Returns md5sum for a message object of type 'AddTask-request"
  "5295bbfb15c328f29e782719ddf57d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTask-request>)))
  "Returns full string definition for message of type '<AddTask-request>"
  (cl:format cl:nil "big_actor_msgs/Task task~%bool update~%~%================================================================================~%MSG: big_actor_msgs/Task~%uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTask-request)))
  "Returns full string definition for message of type 'AddTask-request"
  (cl:format cl:nil "big_actor_msgs/Task task~%bool update~%~%================================================================================~%MSG: big_actor_msgs/Task~%uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint32 taskId                   # Unique task id~%uint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )~%    uint8 TT_NONE=0~%    uint8 TT_SEARCH=1~%    uint8 TT_GOTO_WP=2~%    uint8 TT_TRACK=3~%    uint8 TT_GOTO_LOCATION=4~%    uint8 TT_RETURN_HOME=5~%    uint8 TT_HOLD=6				# (wait in loiter)~%    uint8 TT_VIDEOSTREAM=7~%uint8 status                    # Status of the task~%    uint8 TS_NONE=0~%    uint8 TS_TODO=1             # Created and Not Assigned ~%    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  ~%    uint8 TS_DONE=3             # Done :)~%    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack'd by vehicle  ~%    uint8 TS_CANCELED=5         # Canceled by task publisher~%uint64 vehicleId                # Assigned or/and ack by vehicle  ~%uint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).~%string parameters               # JSON parameters related with task type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTask-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTask-request
    (cl:cons ':task (task msg))
    (cl:cons ':update (update msg))
))
;//! \htmlinclude AddTask-response.msg.html

(cl:defclass <AddTask-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AddTask-response (<AddTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AddTask-response> is deprecated: use ros_vehicle_msgs-srv:AddTask-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTask-response>) ostream)
  "Serializes a message object of type '<AddTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTask-response>) istream)
  "Deserializes a message object of type '<AddTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTask-response>)))
  "Returns string type for a service object of type '<AddTask-response>"
  "ros_vehicle_msgs/AddTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTask-response)))
  "Returns string type for a service object of type 'AddTask-response"
  "ros_vehicle_msgs/AddTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTask-response>)))
  "Returns md5sum for a message object of type '<AddTask-response>"
  "5295bbfb15c328f29e782719ddf57d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTask-response)))
  "Returns md5sum for a message object of type 'AddTask-response"
  "5295bbfb15c328f29e782719ddf57d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTask-response>)))
  "Returns full string definition for message of type '<AddTask-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTask-response)))
  "Returns full string definition for message of type 'AddTask-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTask-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTask)))
  'AddTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTask)))
  'AddTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTask)))
  "Returns string type for a service object of type '<AddTask>"
  "ros_vehicle_msgs/AddTask")