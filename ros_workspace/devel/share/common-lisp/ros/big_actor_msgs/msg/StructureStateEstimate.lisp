; Auto-generated. Do not edit!


(cl:in-package big_actor_msgs-msg)


;//! \htmlinclude StructureStateEstimate.msg.html

(cl:defclass <StructureStateEstimate> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:integer
    :initform 0)
   (srcVehicleId
    :reader srcVehicleId
    :initarg :srcVehicleId
    :type cl:integer
    :initform 0)
   (vehicles
    :reader vehicles
    :initarg :vehicles
    :type (cl:vector big_actor_msgs-msg:Vehicle)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Vehicle :initial-element (cl:make-instance 'big_actor_msgs-msg:Vehicle)))
   (connections
    :reader connections
    :initarg :connections
    :type (cl:vector big_actor_msgs-msg:Connectivity)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Connectivity :initial-element (cl:make-instance 'big_actor_msgs-msg:Connectivity)))
   (locations
    :reader locations
    :initarg :locations
    :type (cl:vector big_actor_msgs-msg:Location)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Location :initial-element (cl:make-instance 'big_actor_msgs-msg:Location)))
   (networks
    :reader networks
    :initarg :networks
    :type (cl:vector big_actor_msgs-msg:Network)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Network :initial-element (cl:make-instance 'big_actor_msgs-msg:Network)))
   (hostings
    :reader hostings
    :initarg :hostings
    :type (cl:vector big_actor_msgs-msg:Hosting)
   :initform (cl:make-array 0 :element-type 'big_actor_msgs-msg:Hosting :initial-element (cl:make-instance 'big_actor_msgs-msg:Hosting))))
)

(cl:defclass StructureStateEstimate (<StructureStateEstimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StructureStateEstimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StructureStateEstimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name big_actor_msgs-msg:<StructureStateEstimate> is deprecated: use big_actor_msgs-msg:StructureStateEstimate instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:timeStamp-val is deprecated.  Use big_actor_msgs-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'srcVehicleId-val :lambda-list '(m))
(cl:defmethod srcVehicleId-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:srcVehicleId-val is deprecated.  Use big_actor_msgs-msg:srcVehicleId instead.")
  (srcVehicleId m))

(cl:ensure-generic-function 'vehicles-val :lambda-list '(m))
(cl:defmethod vehicles-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:vehicles-val is deprecated.  Use big_actor_msgs-msg:vehicles instead.")
  (vehicles m))

(cl:ensure-generic-function 'connections-val :lambda-list '(m))
(cl:defmethod connections-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:connections-val is deprecated.  Use big_actor_msgs-msg:connections instead.")
  (connections m))

(cl:ensure-generic-function 'locations-val :lambda-list '(m))
(cl:defmethod locations-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:locations-val is deprecated.  Use big_actor_msgs-msg:locations instead.")
  (locations m))

(cl:ensure-generic-function 'networks-val :lambda-list '(m))
(cl:defmethod networks-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:networks-val is deprecated.  Use big_actor_msgs-msg:networks instead.")
  (networks m))

(cl:ensure-generic-function 'hostings-val :lambda-list '(m))
(cl:defmethod hostings-val ((m <StructureStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader big_actor_msgs-msg:hostings-val is deprecated.  Use big_actor_msgs-msg:hostings instead.")
  (hostings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StructureStateEstimate>) ostream)
  "Serializes a message object of type '<StructureStateEstimate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'srcVehicleId)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'connections))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'locations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'locations))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'networks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'networks))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hostings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hostings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StructureStateEstimate>) istream)
  "Deserializes a message object of type '<StructureStateEstimate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timeStamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'srcVehicleId)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Vehicle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Connectivity))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'locations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'locations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Location))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'networks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'networks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Network))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hostings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hostings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'big_actor_msgs-msg:Hosting))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StructureStateEstimate>)))
  "Returns string type for a message object of type '<StructureStateEstimate>"
  "big_actor_msgs/StructureStateEstimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StructureStateEstimate)))
  "Returns string type for a message object of type 'StructureStateEstimate"
  "big_actor_msgs/StructureStateEstimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StructureStateEstimate>)))
  "Returns md5sum for a message object of type '<StructureStateEstimate>"
  "e3efbe42b53bff423519ce6c0d4dc7fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StructureStateEstimate)))
  "Returns md5sum for a message object of type 'StructureStateEstimate"
  "e3efbe42b53bff423519ce6c0d4dc7fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StructureStateEstimate>)))
  "Returns full string definition for message of type '<StructureStateEstimate>"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # Vehicle id of the sending vehicle~%Vehicle[] vehicles            # Known vehicles~%Connectivity[] connections    # Established connections between vehicles~%Location[] locations          # Known locations~%Network[] networks            # Known networks~%Hosting[] hostings	      # Hosting relation ~%================================================================================~%MSG: big_actor_msgs/Vehicle~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%================================================================================~%MSG: big_actor_msgs/Connectivity~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # First participating vehicle~%uint64 dstVehicleId           # Second participating vehicle~%Network network               # Network used for this connection~%~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%================================================================================~%MSG: big_actor_msgs/Hosting~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%string bigActorID	      # BigActor ID (Java UUID)~%string vehicleName 	      # name of the Vehicle hosting the bigActor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StructureStateEstimate)))
  "Returns full string definition for message of type 'StructureStateEstimate"
  (cl:format cl:nil "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # Vehicle id of the sending vehicle~%Vehicle[] vehicles            # Known vehicles~%Connectivity[] connections    # Established connections between vehicles~%Location[] locations          # Known locations~%Network[] networks            # Known networks~%Hosting[] hostings	      # Hosting relation ~%================================================================================~%MSG: big_actor_msgs/Vehicle~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%================================================================================~%MSG: big_actor_msgs/Connectivity~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 srcVehicleId           # First participating vehicle~%uint64 dstVehicleId           # Second participating vehicle~%Network network               # Network used for this connection~%~%================================================================================~%MSG: big_actor_msgs/Location~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse~%uint32 locationId             # Unique location id~%LatLng[] boundaries           # Location vertices (polygon)~%float32 minimumAltitude       # Lower altitude bound of the location~%float32 maximumAltitude       # Upper altitude bound of the location~%uint8 locationType~%    uint8 LT_NONE=0~%    uint8 LT_SURFACE=1~%    uint8 LT_AIR_SPACE=2~%    uint8 LT_UNDERWATER=3~%    uint8 LT_OIL_SPILL=4~%string name                   # Location name~%~%================================================================================~%MSG: big_actor_msgs/LatLng~%float64 latitude~%float64 longitude~%================================================================================~%MSG: big_actor_msgs/Hosting~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%string bigActorID	      # BigActor ID (Java UUID)~%string vehicleName 	      # name of the Vehicle hosting the bigActor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StructureStateEstimate>))
  (cl:+ 0
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'locations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'networks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hostings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StructureStateEstimate>))
  "Converts a ROS message object to a list"
  (cl:list 'StructureStateEstimate
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':srcVehicleId (srcVehicleId msg))
    (cl:cons ':vehicles (vehicles msg))
    (cl:cons ':connections (connections msg))
    (cl:cons ':locations (locations msg))
    (cl:cons ':networks (networks msg))
    (cl:cons ':hostings (hostings msg))
))
