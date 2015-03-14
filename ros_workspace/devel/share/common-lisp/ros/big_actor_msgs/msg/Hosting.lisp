; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude Hosting.msg.html

(cl:defclass <Hosting> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (bigActorID
    :reader bigActorID
    :initarg :bigActorID
    :type cl:string
    :initform "")
   (vehicleName
    :reader vehicleName
    :initarg :vehicleName
    :type cl:string
    :initform ""))
)

(cl:defclass Hosting (<Hosting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hosting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hosting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<Hosting> is deprecated: use big_actor_msgs-msg:Hosting instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <Hosting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:timeStamp-val is deprecated.  Use big_actor_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'bigActorID-val :lambda-list '(m))
(cl:defmethod bigActorID-val ((m <Hosting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:bigActorID-val is deprecated.  Use big_actor_msgs-msg:bigActorID instead.")
  (bigActorID m))

(cl:ensure-generic-function 'vehicleName-val :lambda-list '(m))
(cl:defmethod vehicleName-val ((m <Hosting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicleName-val is deprecated.  Use big_actor_msgs-msg:vehicleName instead.")
  (vehicleName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hosting>) ostream)
  "Serializes a message object of type '<Hosting>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bigActorID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bigActorID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vehicleName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vehicleName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hosting>) istream)
  "Deserializes a message object of type '<Hosting>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bigActorID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bigActorID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicleName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vehicleName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hosting>)))
  "Returns string type for a message object of type '<Hosting>"
  "big_actor_msgs/Hosting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hosting)))
  "Returns string type for a message object of type 'Hosting"
  "big_actor_msgs/Hosting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hosting>)))
  "Returns md5sum for a message object of type '<Hosting>"
  "eaf3ee0e4ac6e55e2c3ccacf1f5acdd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hosting)))
  "Returns md5sum for a message object of type 'Hosting"
  "eaf3ee0e4ac6e55e2c3ccacf1f5acdd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hosting>)))
  "Returns full string definition for message of type '<Hosting>"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%string bigActorID	      # BigActor ID (Java UUID)~%string vehicleName 	      # name of the Vehicle hosting the bigActor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hosting)))
  "Returns full string definition for message of type 'Hosting"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%string bigActorID	      # BigActor ID (Java UUID)~%string vehicleName 	      # name of the Vehicle hosting the bigActor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hosting>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'bigActorID))
     4 (cl:length (cl:slot-value msg 'vehicleName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hosting>))
  "Converts a ROS message object to a list"
  (cl:list 'Hosting
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':bigActorID (bigActorID msg))
    (cl:cons ':vehicleName (vehicleName msg))
))
