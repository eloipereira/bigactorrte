; Auto-generated. Do not edit!


(cl:in-package ros_vehicle_msgs-srv)


;//! \htmlinclude AddStaticVehicle-request.msg.html

(cl:defclass <AddStaticVehicle-request> (roslisp-msg-protocol:ros-message)
  ((vehicle
    :reader vehicle
    :initarg :vehicle
    :type big_actor_msgs-msg:Vehicle
    :initform (cl:make-instance 'big_actor_msgs-msg:Vehicle))
   (update
    :reader update
    :initarg :update
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddStaticVehicle-request (<AddStaticVehicle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddStaticVehicle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddStaticVehicle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AddStaticVehicle-request> is deprecated: use ros_vehicle_msgs-srv:AddStaticVehicle-request instead.")))

(cl:ensure-generic-function 'vehicle-val :lambda-list '(m))
(cl:defmethod vehicle-val ((m <AddStaticVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:vehicle-val is deprecated.  Use ros_vehicle_msgs-srv:vehicle instead.")
  (vehicle m))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <AddStaticVehicle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:update-val is deprecated.  Use ros_vehicle_msgs-srv:update instead.")
  (update m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddStaticVehicle-request>) ostream)
  "Serializes a message object of type '<AddStaticVehicle-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'update) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddStaticVehicle-request>) istream)
  "Deserializes a message object of type '<AddStaticVehicle-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle) istream)
    (cl:setf (cl:slot-value msg 'update) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddStaticVehicle-request>)))
  "Returns string type for a service object of type '<AddStaticVehicle-request>"
  "ros_vehicle_msgs/AddStaticVehicleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddStaticVehicle-request)))
  "Returns string type for a service object of type 'AddStaticVehicle-request"
  "ros_vehicle_msgs/AddStaticVehicleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddStaticVehicle-request>)))
  "Returns md5sum for a message object of type '<AddStaticVehicle-request>"
  "db50de574fdbb49c79f1b80c74e44a8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddStaticVehicle-request)))
  "Returns md5sum for a message object of type 'AddStaticVehicle-request"
  "db50de574fdbb49c79f1b80c74e44a8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddStaticVehicle-request>)))
  "Returns full string definition for message of type '<AddStaticVehicle-request>"
  (cl:format cl:nil "big_actor_msgs/Vehicle vehicle~%bool update~%~%================================================================================~%MSG: big_actor_msgs/Vehicle~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddStaticVehicle-request)))
  "Returns full string definition for message of type 'AddStaticVehicle-request"
  (cl:format cl:nil "big_actor_msgs/Vehicle vehicle~%bool update~%~%================================================================================~%MSG: big_actor_msgs/Vehicle~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse~%uint64 vehicleId              # Unique vehicle id~%LatLngAlt position            # Vehicle position~%float32 heading               # Vehicle heading~%uint32 taskId                 # Currently processed task~%uint8 taskState               # see Task.status~%uint8 vehicleState            # Status of the vehicle~%    uint8 VS_NONE=0~%    uint8 VS_IDLE=1           # Vehicle idles~%    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId~%uint8 vehicleType~%    uint8 VT_NONE=0~%    uint8 VT_QUADROTOR=1~%    uint8 VT_VESSEL=2 ~%    uint8 VT_DRIFTER=3~%    uint8 VT_MODEL_AIRPLANE=4~%    uint8 VT_GROUND_STATION=5~%string name                   # Vehicle name~%Network[] networks            # Networks known to the vehicle.~%~%================================================================================~%MSG: big_actor_msgs/LatLngAlt~%float64 latitude~%float64 longitude~%float64 altitude~%================================================================================~%MSG: big_actor_msgs/Network~%uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).~%uint8 type                    # Network type (Physical Layer).~%	uint8 NT_NONE=0~%	uint8 NT_ETHERNET_10M=1~%	uint8 NT_ETHERNET_100M=2~%	uint8 NT_ETHERNET_1G=3~%	uint8 NT_ETHERNET_10G=4~%	uint8 NT_WIFI_2MB=10~%	uint8 NT_WIFI_11MB=11~%	uint8 NT_WIFI_27MB=12~%	uint8 NT_WIFI_54MB=13~%	uint8 NT_WIFI_600MB=14~%	uint8 NT_WIFI_1300MB=15~%	uint8 NT_WIFI_7000MB=16~%	uint8 NT_MESH_500kB=20~%	uint8 NT_ACOUSTIC_7kB=30~%	uint8 NT_ACOUSTIC_9kB=31~%	uint8 NT_ACOUSTIC_14kB=32~%	uint8 NT_ACOUSTIC_31kB=33~%    uint8 NT_PICCOLO=40~%    uint8 NT_AIS=50~%uint32 address                # TCP/IP network address, Piccolo channel number, ...~%uint32 mask                   # TCP/IP network mask or zero if not applicable~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddStaticVehicle-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddStaticVehicle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddStaticVehicle-request
    (cl:cons ':vehicle (vehicle msg))
    (cl:cons ':update (update msg))
))
;//! \htmlinclude AddStaticVehicle-response.msg.html

(cl:defclass <AddStaticVehicle-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type ros_vehicle_msgs-msg:ServiceReturnBool
    :initform (cl:make-instance 'ros_vehicle_msgs-msg:ServiceReturnBool)))
)

(cl:defclass AddStaticVehicle-response (<AddStaticVehicle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddStaticVehicle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddStaticVehicle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vehicle_msgs-srv:<AddStaticVehicle-response> is deprecated: use ros_vehicle_msgs-srv:AddStaticVehicle-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AddStaticVehicle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vehicle_msgs-srv:result-val is deprecated.  Use ros_vehicle_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddStaticVehicle-response>) ostream)
  "Serializes a message object of type '<AddStaticVehicle-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddStaticVehicle-response>) istream)
  "Deserializes a message object of type '<AddStaticVehicle-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddStaticVehicle-response>)))
  "Returns string type for a service object of type '<AddStaticVehicle-response>"
  "ros_vehicle_msgs/AddStaticVehicleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddStaticVehicle-response)))
  "Returns string type for a service object of type 'AddStaticVehicle-response"
  "ros_vehicle_msgs/AddStaticVehicleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddStaticVehicle-response>)))
  "Returns md5sum for a message object of type '<AddStaticVehicle-response>"
  "db50de574fdbb49c79f1b80c74e44a8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddStaticVehicle-response)))
  "Returns md5sum for a message object of type 'AddStaticVehicle-response"
  "db50de574fdbb49c79f1b80c74e44a8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddStaticVehicle-response>)))
  "Returns full string definition for message of type '<AddStaticVehicle-response>"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddStaticVehicle-response)))
  "Returns full string definition for message of type 'AddStaticVehicle-response"
  (cl:format cl:nil "ServiceReturnBool result~%~%================================================================================~%MSG: ros_vehicle_msgs/ServiceReturnBool~%bool ok~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddStaticVehicle-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddStaticVehicle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddStaticVehicle-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddStaticVehicle)))
  'AddStaticVehicle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddStaticVehicle)))
  'AddStaticVehicle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddStaticVehicle)))
  "Returns string type for a service object of type '<AddStaticVehicle>"
  "ros_vehicle_msgs/AddStaticVehicle")