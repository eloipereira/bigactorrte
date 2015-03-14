; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AssignTask-request.msg.html

(cl:defclass <AssignTask-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:integer
    :initform 0)
   (to
    :reader to
    :initarg :to
    :type cl:integer
    :initform 0))
)

(cl:defclass AssignTask-request (<AssignTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AssignTask-request> is deprecated: use ros_vehicle_msgs-srv:AssignTask-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:task-val is deprecated.  Use ros_vehicle_msgs-srv:task instead.")
  (task m))

(cl:ensure-generic-function 'to-val :lambda-list '(m))
(cl:defmethod to-val ((m <AssignTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:to-val is deprecated.  Use ros_vehicle_msgs-srv:to instead.")
  (to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-request>) ostream)
  "Serializes a message object of type '<AssignTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'to)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-request>) istream)
  "Deserializes a message object of type '<AssignTask-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'to)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-request>)))
  "Returns string type for a service object of type '<AssignTask-request>"
  "ros_vehicle_msgs/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-request)))
  "Returns string type for a service object of type 'AssignTask-request"
  "ros_vehicle_msgs/AssignTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-request>)))
  "Returns md5sum for a message object of type '<AssignTask-request>"
  "08fbfe04ba3c39af4e051274e9c94633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-request)))
  "Returns md5sum for a message object of type 'AssignTask-request"
  "08fbfe04ba3c39af4e051274e9c94633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-request>)))
  "Returns full string definition for message of type '<AssignTask-request>"
  (cl:format cl:nil "uint32 task~%uint64 to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-request)))
  "Returns full string definition for message of type 'AssignTask-request"
  (cl:format cl:nil "uint32 task~%uint64 to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-request
    (cl:cons ':task (task msg))
    (cl:cons ':to (to msg))
))
;//! \htmlinclude AssignTask-response.msg.html

(cl:defclass <AssignTask-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AssignTask-response (<AssignTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssignTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssignTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AssignTask-response> is deprecated: use ros_vehicle_msgs-srv:AssignTask-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AssignTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssignTask-response>) ostream)
  "Serializes a message object of type '<AssignTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssignTask-response>) istream)
  "Deserializes a message object of type '<AssignTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssignTask-response>)))
  "Returns string type for a service object of type '<AssignTask-response>"
  "ros_vehicle_msgs/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask-response)))
  "Returns string type for a service object of type 'AssignTask-response"
  "ros_vehicle_msgs/AssignTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssignTask-response>)))
  "Returns md5sum for a message object of type '<AssignTask-response>"
  "08fbfe04ba3c39af4e051274e9c94633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssignTask-response)))
  "Returns md5sum for a message object of type 'AssignTask-response"
  "08fbfe04ba3c39af4e051274e9c94633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssignTask-response>)))
  "Returns full string definition for message of type '<AssignTask-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssignTask-response)))
  "Returns full string definition for message of type 'AssignTask-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssignTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssignTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AssignTask-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AssignTask)))
  'AssignTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssignTask)))
  "Returns string type for a service object of type '<AssignTask>"
  "ros_vehicle_msgs/AssignTask")