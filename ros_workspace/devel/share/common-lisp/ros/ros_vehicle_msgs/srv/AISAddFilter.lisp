; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AISAddFilter-request.msg.html

(cl:defclass <AISAddFilter-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AISAddFilter-request (<AISAddFilter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISAddFilter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISAddFilter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISAddFilter-request> is deprecated: use ros_vehicle_msgs-srv:AISAddFilter-request instead.")))

(cl:ensure-generic-function 'vehicleId-val :lambda-list '(m))
(cl:defmethod vehicleId-val ((m <AISAddFilter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicleId-val is deprecated.  Use ros_vehicle_msgs-srv:vehicleId instead.")
  (vehicleId m))

(cl:ensure-generic-function 'mmsi-val :lambda-list '(m))
(cl:defmethod mmsi-val ((m <AISAddFilter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:mmsi-val is deprecated.  Use ros_vehicle_msgs-srv:mmsi instead.")
  (mmsi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISAddFilter-request>) ostream)
  "Serializes a message object of type '<AISAddFilter-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISAddFilter-request>) istream)
  "Deserializes a message object of type '<AISAddFilter-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISAddFilter-request>)))
  "Returns string type for a service object of type '<AISAddFilter-request>"
  "ros_vehicle_msgs/AISAddFilterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISAddFilter-request)))
  "Returns string type for a service object of type 'AISAddFilter-request"
  "ros_vehicle_msgs/AISAddFilterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISAddFilter-request>)))
  "Returns md5sum for a message object of type '<AISAddFilter-request>"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISAddFilter-request)))
  "Returns md5sum for a message object of type 'AISAddFilter-request"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISAddFilter-request>)))
  "Returns full string definition for message of type '<AISAddFilter-request>"
  (cl:format cl:nil "uint64 vehicleId~%uint32 mmsi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISAddFilter-request)))
  "Returns full string definition for message of type 'AISAddFilter-request"
  (cl:format cl:nil "uint64 vehicleId~%uint32 mmsi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISAddFilter-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISAddFilter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AISAddFilter-request
    (cl:cons ':vehicleId (vehicleId msg))
    (cl:cons ':mmsi (mmsi msg))
))
;//! \htmlinclude AISAddFilter-response.msg.html

(cl:defclass <AISAddFilter-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AISAddFilter-response (<AISAddFilter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AISAddFilter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AISAddFilter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AISAddFilter-response> is deprecated: use ros_vehicle_msgs-srv:AISAddFilter-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AISAddFilter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AISAddFilter-response>) ostream)
  "Serializes a message object of type '<AISAddFilter-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AISAddFilter-response>) istream)
  "Deserializes a message object of type '<AISAddFilter-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AISAddFilter-response>)))
  "Returns string type for a service object of type '<AISAddFilter-response>"
  "ros_vehicle_msgs/AISAddFilterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISAddFilter-response)))
  "Returns string type for a service object of type 'AISAddFilter-response"
  "ros_vehicle_msgs/AISAddFilterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AISAddFilter-response>)))
  "Returns md5sum for a message object of type '<AISAddFilter-response>"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AISAddFilter-response)))
  "Returns md5sum for a message object of type 'AISAddFilter-response"
  "574a751e9072e0c419c02c93b7c35b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AISAddFilter-response>)))
  "Returns full string definition for message of type '<AISAddFilter-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AISAddFilter-response)))
  "Returns full string definition for message of type 'AISAddFilter-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AISAddFilter-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AISAddFilter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AISAddFilter-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AISAddFilter)))
  'AISAddFilter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AISAddFilter)))
  'AISAddFilter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AISAddFilter)))
  "Returns string type for a service object of type '<AISAddFilter>"
  "ros_vehicle_msgs/AISAddFilter")