; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AISClearFilters-request.msg.html

(cl:defclass <AISClearFilters-request> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0))
)

(cl:defclass AISClearFilters-request (<AISClearFilters-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISClearFilters-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISClearFilters-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISClearFilters-request> is deprecated: use ros_vehicle_msgs-srv:AISClearFilters-request instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <AISClearFilters-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicleId-val is deprecated.  Use ros_vehicle_msgs-srv:vehicleId instead.")
  (vehicleId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISClearFilters-request>) ostream)
  "Serializes a message object of type '<AISClearFilters-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISClearFilters-request>) istream)
  "Deserializes a message object of type '<AISClearFilters-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISClearFilters-request>)))
  "Returns string type for a service object of type '<AISClearFilters-request>"
  "ros_vehicle_msgs/AISClearFiltersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISClearFilters-request)))
  "Returns string type for a service object of type 'AISClearFilters-request"
  "ros_vehicle_msgs/AISClearFiltersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISClearFilters-request>)))
  "Returns md5sum for a message object of type '<AISClearFilters-request>"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISClearFilters-request)))
  "Returns md5sum for a message object of type 'AISClearFilters-request"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISClearFilters-request>)))
  "Returns full string definition for message of type '<AISClearFilters-request>"
  (cl:format cl:nil "uint64 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISClearFilters-request)))
  "Returns full string definition for message of type 'AISClearFilters-request"
  (cl:format cl:nil "uint64 vehicleId~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISClearFilters-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISClearFilters-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AISClearFilters-request
    (cl:cons ':vehicleId (vehicleId msg))
))
;//! \htmlinclude AISClearFilters-response.msg.html

(cl:defclass <AISClearFilters-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AISClearFilters-response (<AISClearFilters-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISClearFilters-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISClearFilters-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISClearFilters-response> is deprecated: use ros_vehicle_msgs-srv:AISClearFilters-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AISClearFilters-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISClearFilters-response>) ostream)
  "Serializes a message object of type '<AISClearFilters-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISClearFilters-response>) istream)
  "Deserializes a message object of type '<AISClearFilters-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISClearFilters-response>)))
  "Returns string type for a service object of type '<AISClearFilters-response>"
  "ros_vehicle_msgs/AISClearFiltersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISClearFilters-response)))
  "Returns string type for a service object of type 'AISClearFilters-response"
  "ros_vehicle_msgs/AISClearFiltersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISClearFilters-response>)))
  "Returns md5sum for a message object of type '<AISClearFilters-response>"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISClearFilters-response)))
  "Returns md5sum for a message object of type 'AISClearFilters-response"
  "8e14b7c13560b19135298241ac557c54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISClearFilters-response>)))
  "Returns full string definition for message of type '<AISClearFilters-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISClearFilters-response)))
  "Returns full string definition for message of type 'AISClearFilters-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISClearFilters-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISClearFilters-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AISClearFilters-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AISClearFilters)))
  'AISClearFilters-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AISClearFilters)))
  'AISClearFilters-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISClearFilters)))
  "Returns string type for a service object of type '<AISClearFilters>"
  "ros_vehicle_msgs/AISClearFilters")