; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AISOn-request.msg.html

(cl:defclass <AISOn-request> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0))
)

(cl:defclass AISOn-request (<AISOn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISOn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISOn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISOn-request> is deprecated: use ros_vehicle_msgs-srv:AISOn-request instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <AISOn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicleId-val is deprecated.  Use ros_vehicle_msgs-srv:vehicleId instead.")
  (vehicleId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISOn-request>) ostream)
  "Serializes a message object of type '<AISOn-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISOn-request>) istream)
  "Deserializes a message object of type '<AISOn-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISOn-request>)))
  "Returns string type for a service object of type '<AISOn-request>"
  "ros_vehicle_msgs/AISOnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISOn-request)))
  "Returns string type for a service object of type 'AISOn-request"
  "ros_vehicle_msgs/AISOnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISOn-request>)))
  "Returns md5sum for a message object of type '<AISOn-request>"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISOn-request)))
  "Returns md5sum for a message object of type 'AISOn-request"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISOn-request>)))
  "Returns full string definition for message of type '<AISOn-request>"
  (cl:format cl:nil "uint64 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISOn-request)))
  "Returns full string definition for message of type 'AISOn-request"
  (cl:format cl:nil "uint64 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISOn-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISOn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AISOn-request
    (cl:cons ':vehicleId (vehicleId msg))
))
;//! \htmlinclude AISOn-response.msg.html

(cl:defclass <AISOn-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AISOn-response (<AISOn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISOn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISOn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISOn-response> is deprecated: use ros_vehicle_msgs-srv:AISOn-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AISOn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISOn-response>) ostream)
  "Serializes a message object of type '<AISOn-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISOn-response>) istream)
  "Deserializes a message object of type '<AISOn-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISOn-response>)))
  "Returns string type for a service object of type '<AISOn-response>"
  "ros_vehicle_msgs/AISOnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISOn-response)))
  "Returns string type for a service object of type 'AISOn-response"
  "ros_vehicle_msgs/AISOnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISOn-response>)))
  "Returns md5sum for a message object of type '<AISOn-response>"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISOn-response)))
  "Returns md5sum for a message object of type 'AISOn-response"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISOn-response>)))
  "Returns full string definition for message of type '<AISOn-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISOn-response)))
  "Returns full string definition for message of type 'AISOn-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISOn-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISOn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AISOn-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AISOn)))
  'AISOn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AISOn)))
  'AISOn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISOn)))
  "Returns string type for a service object of type '<AISOn>"
  "ros_vehicle_msgs/AISOn")