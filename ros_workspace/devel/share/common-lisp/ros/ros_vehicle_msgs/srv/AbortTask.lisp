; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AbortTask-request.msg.html

(cl:defclass <AbortTask-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:integer
    :initform 0))
)

(cl:defclass AbortTask-request (<AbortTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AbortTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AbortTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AbortTask-request> is deprecated: use ros_vehicle_msgs-srv:AbortTask-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <AbortTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:task-val is deprecated.  Use ros_vehicle_msgs-srv:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AbortTask-request>) ostream)
  "Serializes a message object of type '<AbortTask-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AbortTask-request>) istream)
  "Deserializes a message object of type '<AbortTask-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AbortTask-request>)))
  "Returns string type for a service object of type '<AbortTask-request>"
  "ros_vehicle_msgs/AbortTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AbortTask-request)))
  "Returns string type for a service object of type 'AbortTask-request"
  "ros_vehicle_msgs/AbortTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AbortTask-request>)))
  "Returns md5sum for a message object of type '<AbortTask-request>"
  "9e9f523ac49b499f5fdfc79efaa4ae6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AbortTask-request)))
  "Returns md5sum for a message object of type 'AbortTask-request"
  "9e9f523ac49b499f5fdfc79efaa4ae6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AbortTask-request>)))
  "Returns full string definition for message of type '<AbortTask-request>"
  (cl:format cl:nil "uint32 task~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AbortTask-request)))
  "Returns full string definition for message of type 'AbortTask-request"
  (cl:format cl:nil "uint32 task~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AbortTask-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AbortTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AbortTask-request
    (cl:cons ':task (task msg))
))
;//! \htmlinclude AbortTask-response.msg.html

(cl:defclass <AbortTask-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AbortTask-response (<AbortTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AbortTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AbortTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AbortTask-response> is deprecated: use ros_vehicle_msgs-srv:AbortTask-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AbortTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AbortTask-response>) ostream)
  "Serializes a message object of type '<AbortTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AbortTask-response>) istream)
  "Deserializes a message object of type '<AbortTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AbortTask-response>)))
  "Returns string type for a service object of type '<AbortTask-response>"
  "ros_vehicle_msgs/AbortTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AbortTask-response)))
  "Returns string type for a service object of type 'AbortTask-response"
  "ros_vehicle_msgs/AbortTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AbortTask-response>)))
  "Returns md5sum for a message object of type '<AbortTask-response>"
  "9e9f523ac49b499f5fdfc79efaa4ae6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AbortTask-response)))
  "Returns md5sum for a message object of type 'AbortTask-response"
  "9e9f523ac49b499f5fdfc79efaa4ae6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AbortTask-response>)))
  "Returns full string definition for message of type '<AbortTask-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AbortTask-response)))
  "Returns full string definition for message of type 'AbortTask-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AbortTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AbortTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AbortTask-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AbortTask)))
  'AbortTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AbortTask)))
  'AbortTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AbortTask)))
  "Returns string type for a service object of type '<AbortTask>"
  "ros_vehicle_msgs/AbortTask")