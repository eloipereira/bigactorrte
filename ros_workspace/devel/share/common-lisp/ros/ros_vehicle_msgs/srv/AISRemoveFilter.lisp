; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AISRemoveFilter-request.msg.html

(cl:defclass <AISRemoveFilter-request> (roslisp-msg-protocol:ros-message)
  ((vehicleId
    :reader vehicleId
    :initarg :vehicleId
    :type cl:integer
    :initform 0)
   (mmsi
    :reader mmsi
    :initarg :mmsi
    :type cl:integer
    :initform 0))
)

(cl:defclass AISRemoveFilter-request (<AISRemoveFilter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISRemoveFilter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISRemoveFilter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISRemoveFilter-request> is deprecated: use ros_vehicle_msgs-srv:AISRemoveFilter-request instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <AISRemoveFilter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicleId-val is deprecated.  Use ros_vehicle_msgs-srv:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'mmsi-val :lambda-list '(m))
(cl:defmethod mmsi-val ((m <AISRemoveFilter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:mmsi-val is deprecated.  Use ros_vehicle_msgs-srv:mmsi instead.")
  (mmsi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISRemoveFilter-request>) ostream)
  "Serializes a message object of type '<AISRemoveFilter-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mmsi)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mmsi)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mmsi)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mmsi)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISRemoveFilter-request>) istream)
  "Deserializes a message object of type '<AISRemoveFilter-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'vehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mmsi)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mmsi)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mmsi)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mmsi)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISRemoveFilter-request>)))
  "Returns string type for a service object of type '<AISRemoveFilter-request>"
  "ros_vehicle_msgs/AISRemoveFilterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISRemoveFilter-request)))
  "Returns string type for a service object of type 'AISRemoveFilter-request"
  "ros_vehicle_msgs/AISRemoveFilterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISRemoveFilter-request>)))
  "Returns md5sum for a message object of type '<AISRemoveFilter-request>"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISRemoveFilter-request)))
  "Returns md5sum for a message object of type 'AISRemoveFilter-request"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISRemoveFilter-request>)))
  "Returns full string definition for message of type '<AISRemoveFilter-request>"
  (cl:format cl:nil "uint64 vehicleId~%uint32 mmsi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISRemoveFilter-request)))
  "Returns full string definition for message of type 'AISRemoveFilter-request"
  (cl:format cl:nil "uint64 vehicleId~%uint32 mmsi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISRemoveFilter-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISRemoveFilter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AISRemoveFilter-request
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':mmsi (mmsi msg))
))
;//! \htmlinclude AISRemoveFilter-response.msg.html

(cl:defclass <AISRemoveFilter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AISRemoveFilter-response (<AISRemoveFilter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISRemoveFilter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISRemoveFilter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISRemoveFilter-response> is deprecated: use ros_vehicle_msgs-srv:AISRemoveFilter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AISRemoveFilter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISRemoveFilter-response>) ostream)
  "Serializes a message object of type '<AISRemoveFilter-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISRemoveFilter-response>) istream)
  "Deserializes a message object of type '<AISRemoveFilter-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISRemoveFilter-response>)))
  "Returns string type for a service object of type '<AISRemoveFilter-response>"
  "ros_vehicle_msgs/AISRemoveFilterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISRemoveFilter-response)))
  "Returns string type for a service object of type 'AISRemoveFilter-response"
  "ros_vehicle_msgs/AISRemoveFilterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISRemoveFilter-response>)))
  "Returns md5sum for a message object of type '<AISRemoveFilter-response>"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISRemoveFilter-response)))
  "Returns md5sum for a message object of type 'AISRemoveFilter-response"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISRemoveFilter-response>)))
  "Returns full string definition for message of type '<AISRemoveFilter-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISRemoveFilter-response)))
  "Returns full string definition for message of type 'AISRemoveFilter-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISRemoveFilter-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISRemoveFilter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AISRemoveFilter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AISRemoveFilter)))
  'AISRemoveFilter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AISRemoveFilter)))
  'AISRemoveFilter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISRemoveFilter)))
  "Returns string type for a service object of type '<AISRemoveFilter>"
  "ros_vehicle_msgs/AISRemoveFilter")