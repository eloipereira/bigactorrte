; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-msg)


;//! \htmlinclude TaskState.msg.html

(cl:defclass <TaskState> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0)
   (vehicleStatus
    :reader vehicleStatus
    :initarg :vehicleStatus
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:integer
    :initform 0)
   (taskId
    :reader taskId
    :initarg :taskId
    :type cl:integer
    :initform 0)
   (taskStatus
    :reader taskStatus
    :initarg :taskStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TaskState (<TaskState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-msg:<TaskState> is deprecated: use ros_vehicle_msgs-msg:TaskState instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:vehicleId-val is deprecated.  Use ros_vehicle_msgs-msg:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'vehicleStatus-val :lambda-list '(m))
(cl:defmethod vehicleStatus-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:vehicleStatus-val is deprecated.  Use ros_vehicle_msgs-msg:vehicleStatus instead.")
  (vehicleStatus m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:stamp-val is deprecated.  Use ros_vehicle_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'taskId-val :lambda-list '(m))
(cl:defmethod taskId-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:taskId-val is deprecated.  Use ros_vehicle_msgs-msg:taskId instead.")
  (taskId m))

(cl:ensure-generic-function 'taskStatus-val :lambda-list '(m))
(cl:defmethod taskStatus-val ((m <TaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:taskStatus-val is deprecated.  Use ros_vehicle_msgs-msg:taskStatus instead.")
  (taskStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskState>) ostream)
  "Serializes a message object of type '<TaskState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskState>) istream)
  "Deserializes a message object of type '<TaskState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'taskId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taskStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskState>)))
  "Returns string type for a message object of type '<TaskState>"
  "ros_vehicle_msgs/TaskState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskState)))
  "Returns string type for a message object of type 'TaskState"
  "ros_vehicle_msgs/TaskState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskState>)))
  "Returns md5sum for a message object of type '<TaskState>"
  "1d771a872078af9c03344db2decc0965")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskState)))
  "Returns md5sum for a message object of type 'TaskState"
  "1d771a872078af9c03344db2decc0965")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskState>)))
  "Returns full string definition for message of type '<TaskState>"
  (cl:format cl:nil "uint64  vehicleId~%uint8   vehicleStatus~%uint64  stamp~%uint32  taskId~%uint8   taskStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskState)))
  "Returns full string definition for message of type 'TaskState"
  (cl:format cl:nil "uint64  vehicleId~%uint8   vehicleStatus~%uint64  stamp~%uint32  taskId~%uint8   taskStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskState>))
  (cl:+ 0
     8
     1
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskState>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskState
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':vehicleStatus (vehicleStatus msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':taskId (taskId msg))
    (cl:cons ':taskStatus (taskStatus msg))
))
