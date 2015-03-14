; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-msg)


;//! \htmlinclude LoiterData.msg.html

(cl:defclass <LoiterData> (roslisp-msg-protocol:ros-message)
  ((active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (radius
    :reader radius
    :initarg :radius
    :type cl:fixnum
    :initform 0)
   (time_sec
    :reader time_sec
    :initarg :time_sec
    :type cl:fixnum
    :initform 0)
   (times
    :reader times
    :initarg :times
    :type cl:fixnum
    :initform 0)
   (clockwise
    :reader clockwise
    :initarg :clockwise
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoiterData (<LoiterData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoiterData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoiterData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-msg:<LoiterData> is deprecated: use ros_vehicle_msgs-msg:LoiterData instead.")))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <LoiterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:active-val is deprecated.  Use ros_vehicle_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <LoiterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:radius-val is deprecated.  Use ros_vehicle_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'time_sec-val :lambda-list '(m))
(cl:defmethod time_sec-val ((m <LoiterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:time_sec-val is deprecated.  Use ros_vehicle_msgs-msg:time_sec instead.")
  (time_sec m))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <LoiterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:times-val is deprecated.  Use ros_vehicle_msgs-msg:times instead.")
  (times m))

(cl:ensure-generic-function 'clockwise-val :lambda-list '(m))
(cl:defmethod clockwise-val ((m <LoiterData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-msg:clockwise-val is deprecated.  Use ros_vehicle_msgs-msg:clockwise instead.")
  (clockwise m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoiterData>) ostream)
  "Serializes a message object of type '<LoiterData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clockwise) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoiterData>) istream)
  "Deserializes a message object of type '<LoiterData>"
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'times)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clockwise) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoiterData>)))
  "Returns string type for a message object of type '<LoiterData>"
  "ros_vehicle_msgs/LoiterData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoiterData)))
  "Returns string type for a message object of type 'LoiterData"
  "ros_vehicle_msgs/LoiterData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoiterData>)))
  "Returns md5sum for a message object of type '<LoiterData>"
  "bf7af9921d5d304c4f893059282c81fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoiterData)))
  "Returns md5sum for a message object of type 'LoiterData"
  "bf7af9921d5d304c4f893059282c81fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoiterData>)))
  "Returns full string definition for message of type '<LoiterData>"
  (cl:format cl:nil "bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoiterData)))
  "Returns full string definition for message of type 'LoiterData"
  (cl:format cl:nil "bool active             #have loiter definition ~%uint16 radius           #radius of loiter in metters  ~%uint16 time_sec         #time in seconds to be in loiter~%uint16 times            #number of loiters to do ~%bool clockwise          #go clockwise direction    ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoiterData>))
  (cl:+ 0
     1
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoiterData>))
  "Converts a ROS message object to a list"
  (cl:list 'LoiterData
    (cl:cons ':active (active msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':time_sec (time_sec msg))
    (cl:cons ':times (times msg))
    (cl:cons ':clockwise (clockwise msg))
))
