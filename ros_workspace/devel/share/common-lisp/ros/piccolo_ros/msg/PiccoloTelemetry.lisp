; Auto-generated. Do not edit!


(cl:in-package piccolo_ros-msg)


;//! \htmlinclude PiccoloTelemetry.msg.html

(cl:defclass <PiccoloTelemetry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicleid
    :reader vehicleid
    :initarg :vehicleid
    :type cl:fixnum
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (ias
    :reader ias
    :initarg :ias
    :type cl:fixnum
    :initform 0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:fixnum
    :initform 0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:fixnum
    :initform 0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:fixnum
    :initform 0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:fixnum
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:fixnum
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (barometricAltitude
    :reader barometricAltitude
    :initarg :barometricAltitude
    :type cl:fixnum
    :initform 0)
   (windSouth
    :reader windSouth
    :initarg :windSouth
    :type cl:fixnum
    :initform 0)
   (windWest
    :reader windWest
    :initarg :windWest
    :type cl:fixnum
    :initform 0)
   (leftRPM
    :reader leftRPM
    :initarg :leftRPM
    :type cl:fixnum
    :initform 0)
   (rightRPM
    :reader rightRPM
    :initarg :rightRPM
    :type cl:fixnum
    :initform 0)
   (staticPressure
    :reader staticPressure
    :initarg :staticPressure
    :type cl:fixnum
    :initform 0)
   (accelX
    :reader accelX
    :initarg :accelX
    :type cl:fixnum
    :initform 0)
   (accelY
    :reader accelY
    :initarg :accelY
    :type cl:fixnum
    :initform 0)
   (accelZ
    :reader accelZ
    :initarg :accelZ
    :type cl:fixnum
    :initform 0)
   (compass
    :reader compass
    :initarg :compass
    :type cl:fixnum
    :initform 0)
   (agl
    :reader agl
    :initarg :agl
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PiccoloTelemetry (<PiccoloTelemetry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PiccoloTelemetry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PiccoloTelemetry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name piccolo_ros-msg:<PiccoloTelemetry> is deprecated: use piccolo_ros-msg:PiccoloTelemetry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:header-val is deprecated.  Use piccolo_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicleid-val :lambda-list '(m))
(cl:defmethod vehicleid-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vehicleid-val is deprecated.  Use piccolo_ros-msg:vehicleid instead.")
  (vehicleid m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:latitude-val is deprecated.  Use piccolo_ros-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:longitude-val is deprecated.  Use piccolo_ros-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:altitude-val is deprecated.  Use piccolo_ros-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'ias-val :lambda-list '(m))
(cl:defmethod ias-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:ias-val is deprecated.  Use piccolo_ros-msg:ias instead.")
  (ias m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vx-val is deprecated.  Use piccolo_ros-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vy-val is deprecated.  Use piccolo_ros-msg:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:vz-val is deprecated.  Use piccolo_ros-msg:vz instead.")
  (vz m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:roll-val is deprecated.  Use piccolo_ros-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:pitch-val is deprecated.  Use piccolo_ros-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:yaw-val is deprecated.  Use piccolo_ros-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'barometricAltitude-val :lambda-list '(m))
(cl:defmethod barometricAltitude-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:barometricAltitude-val is deprecated.  Use piccolo_ros-msg:barometricAltitude instead.")
  (barometricAltitude m))

(cl:ensure-generic-function 'windSouth-val :lambda-list '(m))
(cl:defmethod windSouth-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:windSouth-val is deprecated.  Use piccolo_ros-msg:windSouth instead.")
  (windSouth m))

(cl:ensure-generic-function 'windWest-val :lambda-list '(m))
(cl:defmethod windWest-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:windWest-val is deprecated.  Use piccolo_ros-msg:windWest instead.")
  (windWest m))

(cl:ensure-generic-function 'leftRPM-val :lambda-list '(m))
(cl:defmethod leftRPM-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:leftRPM-val is deprecated.  Use piccolo_ros-msg:leftRPM instead.")
  (leftRPM m))

(cl:ensure-generic-function 'rightRPM-val :lambda-list '(m))
(cl:defmethod rightRPM-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:rightRPM-val is deprecated.  Use piccolo_ros-msg:rightRPM instead.")
  (rightRPM m))

(cl:ensure-generic-function 'staticPressure-val :lambda-list '(m))
(cl:defmethod staticPressure-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:staticPressure-val is deprecated.  Use piccolo_ros-msg:staticPressure instead.")
  (staticPressure m))

(cl:ensure-generic-function 'accelX-val :lambda-list '(m))
(cl:defmethod accelX-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:accelX-val is deprecated.  Use piccolo_ros-msg:accelX instead.")
  (accelX m))

(cl:ensure-generic-function 'accelY-val :lambda-list '(m))
(cl:defmethod accelY-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:accelY-val is deprecated.  Use piccolo_ros-msg:accelY instead.")
  (accelY m))

(cl:ensure-generic-function 'accelZ-val :lambda-list '(m))
(cl:defmethod accelZ-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:accelZ-val is deprecated.  Use piccolo_ros-msg:accelZ instead.")
  (accelZ m))

(cl:ensure-generic-function 'compass-val :lambda-list '(m))
(cl:defmethod compass-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:compass-val is deprecated.  Use piccolo_ros-msg:compass instead.")
  (compass m))

(cl:ensure-generic-function 'agl-val :lambda-list '(m))
(cl:defmethod agl-val ((m <PiccoloTelemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader piccolo_ros-msg:agl-val is deprecated.  Use piccolo_ros-msg:agl instead.")
  (agl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PiccoloTelemetry>) ostream)
  "Serializes a message object of type '<PiccoloTelemetry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ias)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ias)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'vx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vz)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'barometricAltitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'windSouth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'windWest)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftRPM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'leftRPM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightRPM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rightRPM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'staticPressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'staticPressure)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'accelX)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accelY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accelZ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'compass)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agl)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PiccoloTelemetry>) istream)
  "Deserializes a message object of type '<PiccoloTelemetry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicleid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ias)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ias)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vx) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vy) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vz) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'barometricAltitude) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'windSouth) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'windWest) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leftRPM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'leftRPM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rightRPM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rightRPM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'staticPressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'staticPressure)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accelX) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accelY) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accelZ) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'compass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'compass)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'agl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'agl)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PiccoloTelemetry>)))
  "Returns string type for a message object of type '<PiccoloTelemetry>"
  "piccolo_ros/PiccoloTelemetry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PiccoloTelemetry)))
  "Returns string type for a message object of type 'PiccoloTelemetry"
  "piccolo_ros/PiccoloTelemetry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PiccoloTelemetry>)))
  "Returns md5sum for a message object of type '<PiccoloTelemetry>"
  "f858aa171f333369271fd878689b8042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PiccoloTelemetry)))
  "Returns md5sum for a message object of type 'PiccoloTelemetry"
  "f858aa171f333369271fd878689b8042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PiccoloTelemetry>)))
  "Returns full string definition for message of type '<PiccoloTelemetry>"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%float32 latitude~%float32 longitude~%float32 altitude~%uint16 ias~%int16 vx~%int16 vy~%int16 vz~%int16 roll~%int16 pitch~%float32 yaw~%int16 barometricAltitude~%int16 windSouth~%int16 windWest~%uint16 leftRPM~%uint16 rightRPM~%uint16 staticPressure~%int16 accelX~%int16 accelY~%int16 accelZ~%uint16 compass~%uint16 agl~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PiccoloTelemetry)))
  "Returns full string definition for message of type 'PiccoloTelemetry"
  (cl:format cl:nil "Header header~%uint16 vehicleid~%float32 latitude~%float32 longitude~%float32 altitude~%uint16 ias~%int16 vx~%int16 vy~%int16 vz~%int16 roll~%int16 pitch~%float32 yaw~%int16 barometricAltitude~%int16 windSouth~%int16 windWest~%uint16 leftRPM~%uint16 rightRPM~%uint16 staticPressure~%int16 accelX~%int16 accelY~%int16 accelZ~%uint16 compass~%uint16 agl~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PiccoloTelemetry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     4
     4
     2
     2
     2
     2
     2
     2
     4
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PiccoloTelemetry>))
  "Converts a ROS message object to a list"
  (cl:list 'PiccoloTelemetry
    (cl:cons ':header (header msg))
    (cl:cons ':vehicleid (vehicleid msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':ias (ias msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':barometricAltitude (barometricAltitude msg))
    (cl:cons ':windSouth (windSouth msg))
    (cl:cons ':windWest (windWest msg))
    (cl:cons ':leftRPM (leftRPM msg))
    (cl:cons ':rightRPM (rightRPM msg))
    (cl:cons ':staticPressure (staticPressure msg))
    (cl:cons ':accelX (accelX msg))
    (cl:cons ':accelY (accelY msg))
    (cl:cons ':accelZ (accelZ msg))
    (cl:cons ':compass (compass msg))
    (cl:cons ':agl (agl msg))
))
