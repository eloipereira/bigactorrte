; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AISOff-request.msg.html

(cl:defclass <AISOff-request> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0))
)

(cl:defclass AISOff-request (<AISOff-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISOff-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISOff-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISOff-request> is deprecated: use ros_vehicle_msgs-srv:AISOff-request instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <AISOff-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicleId-val is deprecated.  Use ros_vehicle_msgs-srv:vehicleId instead.")
  (vehicleId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISOff-request>) ostream)
  "Serializes a message object of type '<AISOff-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISOff-request>) istream)
  "Deserializes a message object of type '<AISOff-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISOff-request>)))
  "Returns string type for a service object of type '<AISOff-request>"
  "ros_vehicle_msgs/AISOffRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISOff-request)))
  "Returns string type for a service object of type 'AISOff-request"
  "ros_vehicle_msgs/AISOffRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISOff-request>)))
  "Returns md5sum for a message object of type '<AISOff-request>"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISOff-request)))
  "Returns md5sum for a message object of type 'AISOff-request"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISOff-request>)))
  "Returns full string definition for message of type '<AISOff-request>"
  (cl:format cl:nil "uint64 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISOff-request)))
  "Returns full string definition for message of type 'AISOff-request"
  (cl:format cl:nil "uint64 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISOff-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISOff-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AISOff-request
    (cl:cons ':vehicleId (vehicleId msg))
))
;//! \htmlinclude AISOff-response.msg.html

(cl:defclass <AISOff-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AISOff-response (<AISOff-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISOff-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISOff-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISOff-response> is deprecated: use ros_vehicle_msgs-srv:AISOff-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AISOff-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISOff-response>) ostream)
  "Serializes a message object of type '<AISOff-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISOff-response>) istream)
  "Deserializes a message object of type '<AISOff-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISOff-response>)))
  "Returns string type for a service object of type '<AISOff-response>"
  "ros_vehicle_msgs/AISOffResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISOff-response)))
  "Returns string type for a service object of type 'AISOff-response"
  "ros_vehicle_msgs/AISOffResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISOff-response>)))
  "Returns md5sum for a message object of type '<AISOff-response>"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISOff-response)))
  "Returns md5sum for a message object of type 'AISOff-response"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISOff-response>)))
  "Returns full string definition for message of type '<AISOff-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISOff-response)))
  "Returns full string definition for message of type 'AISOff-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISOff-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISOff-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AISOff-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AISOff)))
  'AISOff-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AISOff)))
  'AISOff-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISOff)))
  "Returns string type for a service object of type '<AISOff>"
  "ros_vehicle_msgs/AISOff")