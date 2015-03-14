; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-msg)


;//! \htmlinclude ServiceReturnBool.msg.html

(cl:defclass <ServiceReturnBool> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceReturnBool (<ServiceReturnBool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceReturnBool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceReturnBool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-msg:<ServiceReturnBool> is deprecated: use ros_vehicle_msgs-msg:ServiceReturnBool instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <ServiceReturnBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:ok-val is deprecated.  Use ros_vehicle_msgs-msg:ok instead.")
  (ok m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ServiceReturnBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:error-val is deprecated.  Use ros_vehicle_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceReturnBool>) ostream)
  "Serializes a message object of type '<ServiceReturnBool>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceReturnBool>) istream)
  "Deserializes a message object of type '<ServiceReturnBool>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceReturnBool>)))
  "Returns string type for a message object of type '<ServiceReturnBool>"
  "ros_vehicle_msgs/ServiceReturnBool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceReturnBool)))
  "Returns string type for a message object of type 'ServiceReturnBool"
  "ros_vehicle_msgs/ServiceReturnBool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceReturnBool>)))
  "Returns md5sum for a message object of type '<ServiceReturnBool>"
  "14d6fca830116fb9833d983a296f00ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceReturnBool)))
  "Returns md5sum for a message object of type 'ServiceReturnBool"
  "14d6fca830116fb9833d983a296f00ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceReturnBool>)))
  "Returns full string definition for message of type '<ServiceReturnBool>"
  (cl:format cl:nil "bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceReturnBool)))
  "Returns full string definition for message of type 'ServiceReturnBool"
  (cl:format cl:nil "bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceReturnBool>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceReturnBool>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceReturnBool
    (cl:cons ':ok (ok msg))
    (cl:cons ':error (error msg))
))
