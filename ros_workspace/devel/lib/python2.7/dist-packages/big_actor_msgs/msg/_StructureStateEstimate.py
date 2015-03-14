"""autogenerated by genpy from big_actor_msgs/StructureStateEstimate.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import big_actor_msgs.msg

class StructureStateEstimate(genpy.Message):
  _md5sum = "e3efbe42b53bff423519ce6c0d4dc7fc"
  _type = "big_actor_msgs/StructureStateEstimate"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).
uint64 srcVehicleId           # Vehicle id of the sending vehicle
Vehicle[] vehicles            # Known vehicles
Connectivity[] connections    # Established connections between vehicles
Location[] locations          # Known locations
Network[] networks            # Known networks
Hosting[] hostings	      # Hosting relation 
================================================================================
MSG: big_actor_msgs/Vehicle
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).
uint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse
uint64 vehicleId              # Unique vehicle id
LatLngAlt position            # Vehicle position
float32 heading               # Vehicle heading
uint32 taskId                 # Currently processed task
uint8 taskState               # see Task.status
uint8 vehicleState            # Status of the vehicle
    uint8 VS_NONE=0
    uint8 VS_IDLE=1           # Vehicle idles
    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId
uint8 vehicleType
    uint8 VT_NONE=0
    uint8 VT_QUADROTOR=1
    uint8 VT_VESSEL=2 
    uint8 VT_DRIFTER=3
    uint8 VT_MODEL_AIRPLANE=4
    uint8 VT_GROUND_STATION=5
string name                   # Vehicle name
Network[] networks            # Networks known to the vehicle.

================================================================================
MSG: big_actor_msgs/LatLngAlt
float64 latitude
float64 longitude
float64 altitude
================================================================================
MSG: big_actor_msgs/Network
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).
uint8 type                    # Network type (Physical Layer).
	uint8 NT_NONE=0
	uint8 NT_ETHERNET_10M=1
	uint8 NT_ETHERNET_100M=2
	uint8 NT_ETHERNET_1G=3
	uint8 NT_ETHERNET_10G=4
	uint8 NT_WIFI_2MB=10
	uint8 NT_WIFI_11MB=11
	uint8 NT_WIFI_27MB=12
	uint8 NT_WIFI_54MB=13
	uint8 NT_WIFI_600MB=14
	uint8 NT_WIFI_1300MB=15
	uint8 NT_WIFI_7000MB=16
	uint8 NT_MESH_500kB=20
	uint8 NT_ACOUSTIC_7kB=30
	uint8 NT_ACOUSTIC_9kB=31
	uint8 NT_ACOUSTIC_14kB=32
	uint8 NT_ACOUSTIC_31kB=33
    uint8 NT_PICCOLO=40
    uint8 NT_AIS=50
uint32 address                # TCP/IP network address, Piccolo channel number, ...
uint32 mask                   # TCP/IP network mask or zero if not applicable
================================================================================
MSG: big_actor_msgs/Connectivity
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).
uint64 srcVehicleId           # First participating vehicle
uint64 dstVehicleId           # Second participating vehicle
Network network               # Network used for this connection

================================================================================
MSG: big_actor_msgs/Location
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).
uint64 location_ttl           #	Time-to-live. If message is not updated, it is removed from sse
uint32 locationId             # Unique location id
LatLng[] boundaries           # Location vertices (polygon)
float32 minimumAltitude       # Lower altitude bound of the location
float32 maximumAltitude       # Upper altitude bound of the location
uint8 locationType
    uint8 LT_NONE=0
    uint8 LT_SURFACE=1
    uint8 LT_AIR_SPACE=2
    uint8 LT_UNDERWATER=3
    uint8 LT_OIL_SPILL=4
string name                   # Location name

================================================================================
MSG: big_actor_msgs/LatLng
float64 latitude
float64 longitude
================================================================================
MSG: big_actor_msgs/Hosting
uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).
string bigActorID	      # BigActor ID (Java UUID)
string vehicleName 	      # name of the Vehicle hosting the bigActor
"""
  __slots__ = ['timeStamp','srcVehicleId','vehicles','connections','locations','networks','hostings']
  _slot_types = ['uint64','uint64','big_actor_msgs/Vehicle[]','big_actor_msgs/Connectivity[]','big_actor_msgs/Location[]','big_actor_msgs/Network[]','big_actor_msgs/Hosting[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       timeStamp,srcVehicleId,vehicles,connections,locations,networks,hostings

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(StructureStateEstimate, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.timeStamp is None:
        self.timeStamp = 0
      if self.srcVehicleId is None:
        self.srcVehicleId = 0
      if self.vehicles is None:
        self.vehicles = []
      if self.connections is None:
        self.connections = []
      if self.locations is None:
        self.locations = []
      if self.networks is None:
        self.networks = []
      if self.hostings is None:
        self.hostings = []
    else:
      self.timeStamp = 0
      self.srcVehicleId = 0
      self.vehicles = []
      self.connections = []
      self.locations = []
      self.networks = []
      self.hostings = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_2Q.pack(_x.timeStamp, _x.srcVehicleId))
      length = len(self.vehicles)
      buff.write(_struct_I.pack(length))
      for val1 in self.vehicles:
        _x = val1
        buff.write(_struct_3Q.pack(_x.timeStamp, _x.vehicle_ttl, _x.vehicleId))
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.latitude, _x.longitude, _x.altitude))
        _x = val1
        buff.write(_struct_fI3B.pack(_x.heading, _x.taskId, _x.taskState, _x.vehicleState, _x.vehicleType))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.networks)
        buff.write(_struct_I.pack(length))
        for val2 in val1.networks:
          _x = val2
          buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      length = len(self.connections)
      buff.write(_struct_I.pack(length))
      for val1 in self.connections:
        _x = val1
        buff.write(_struct_3Q.pack(_x.timeStamp, _x.srcVehicleId, _x.dstVehicleId))
        _v2 = val1.network
        _x = _v2
        buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      length = len(self.locations)
      buff.write(_struct_I.pack(length))
      for val1 in self.locations:
        _x = val1
        buff.write(_struct_2QI.pack(_x.timeStamp, _x.location_ttl, _x.locationId))
        length = len(val1.boundaries)
        buff.write(_struct_I.pack(length))
        for val2 in val1.boundaries:
          _x = val2
          buff.write(_struct_2d.pack(_x.latitude, _x.longitude))
        _x = val1
        buff.write(_struct_2fB.pack(_x.minimumAltitude, _x.maximumAltitude, _x.locationType))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.networks)
      buff.write(_struct_I.pack(length))
      for val1 in self.networks:
        _x = val1
        buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      length = len(self.hostings)
      buff.write(_struct_I.pack(length))
      for val1 in self.hostings:
        buff.write(_struct_Q.pack(val1.timeStamp))
        _x = val1.bigActorID
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.vehicleName
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.vehicles is None:
        self.vehicles = None
      if self.connections is None:
        self.connections = None
      if self.locations is None:
        self.locations = None
      if self.networks is None:
        self.networks = None
      if self.hostings is None:
        self.hostings = None
      end = 0
      _x = self
      start = end
      end += 16
      (_x.timeStamp, _x.srcVehicleId,) = _struct_2Q.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vehicles = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Vehicle()
        _x = val1
        start = end
        end += 24
        (_x.timeStamp, _x.vehicle_ttl, _x.vehicleId,) = _struct_3Q.unpack(str[start:end])
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.latitude, _x.longitude, _x.altitude,) = _struct_3d.unpack(str[start:end])
        _x = val1
        start = end
        end += 11
        (_x.heading, _x.taskId, _x.taskState, _x.vehicleState, _x.vehicleType,) = _struct_fI3B.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.networks = []
        for i in range(0, length):
          val2 = big_actor_msgs.msg.Network()
          _x = val2
          start = end
          end += 17
          (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
          val1.networks.append(val2)
        self.vehicles.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.connections = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Connectivity()
        _x = val1
        start = end
        end += 24
        (_x.timeStamp, _x.srcVehicleId, _x.dstVehicleId,) = _struct_3Q.unpack(str[start:end])
        _v4 = val1.network
        _x = _v4
        start = end
        end += 17
        (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
        self.connections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.locations = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Location()
        _x = val1
        start = end
        end += 20
        (_x.timeStamp, _x.location_ttl, _x.locationId,) = _struct_2QI.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.boundaries = []
        for i in range(0, length):
          val2 = big_actor_msgs.msg.LatLng()
          _x = val2
          start = end
          end += 16
          (_x.latitude, _x.longitude,) = _struct_2d.unpack(str[start:end])
          val1.boundaries.append(val2)
        _x = val1
        start = end
        end += 9
        (_x.minimumAltitude, _x.maximumAltitude, _x.locationType,) = _struct_2fB.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        self.locations.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.networks = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Network()
        _x = val1
        start = end
        end += 17
        (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
        self.networks.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.hostings = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Hosting()
        start = end
        end += 8
        (val1.timeStamp,) = _struct_Q.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.bigActorID = str[start:end].decode('utf-8')
        else:
          val1.bigActorID = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.vehicleName = str[start:end].decode('utf-8')
        else:
          val1.vehicleName = str[start:end]
        self.hostings.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_2Q.pack(_x.timeStamp, _x.srcVehicleId))
      length = len(self.vehicles)
      buff.write(_struct_I.pack(length))
      for val1 in self.vehicles:
        _x = val1
        buff.write(_struct_3Q.pack(_x.timeStamp, _x.vehicle_ttl, _x.vehicleId))
        _v5 = val1.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.latitude, _x.longitude, _x.altitude))
        _x = val1
        buff.write(_struct_fI3B.pack(_x.heading, _x.taskId, _x.taskState, _x.vehicleState, _x.vehicleType))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        length = len(val1.networks)
        buff.write(_struct_I.pack(length))
        for val2 in val1.networks:
          _x = val2
          buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      length = len(self.connections)
      buff.write(_struct_I.pack(length))
      for val1 in self.connections:
        _x = val1
        buff.write(_struct_3Q.pack(_x.timeStamp, _x.srcVehicleId, _x.dstVehicleId))
        _v6 = val1.network
        _x = _v6
        buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      length = len(self.locations)
      buff.write(_struct_I.pack(length))
      for val1 in self.locations:
        _x = val1
        buff.write(_struct_2QI.pack(_x.timeStamp, _x.location_ttl, _x.locationId))
        length = len(val1.boundaries)
        buff.write(_struct_I.pack(length))
        for val2 in val1.boundaries:
          _x = val2
          buff.write(_struct_2d.pack(_x.latitude, _x.longitude))
        _x = val1
        buff.write(_struct_2fB.pack(_x.minimumAltitude, _x.maximumAltitude, _x.locationType))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.networks)
      buff.write(_struct_I.pack(length))
      for val1 in self.networks:
        _x = val1
        buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      length = len(self.hostings)
      buff.write(_struct_I.pack(length))
      for val1 in self.hostings:
        buff.write(_struct_Q.pack(val1.timeStamp))
        _x = val1.bigActorID
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.vehicleName
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.vehicles is None:
        self.vehicles = None
      if self.connections is None:
        self.connections = None
      if self.locations is None:
        self.locations = None
      if self.networks is None:
        self.networks = None
      if self.hostings is None:
        self.hostings = None
      end = 0
      _x = self
      start = end
      end += 16
      (_x.timeStamp, _x.srcVehicleId,) = _struct_2Q.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vehicles = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Vehicle()
        _x = val1
        start = end
        end += 24
        (_x.timeStamp, _x.vehicle_ttl, _x.vehicleId,) = _struct_3Q.unpack(str[start:end])
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.latitude, _x.longitude, _x.altitude,) = _struct_3d.unpack(str[start:end])
        _x = val1
        start = end
        end += 11
        (_x.heading, _x.taskId, _x.taskState, _x.vehicleState, _x.vehicleType,) = _struct_fI3B.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.networks = []
        for i in range(0, length):
          val2 = big_actor_msgs.msg.Network()
          _x = val2
          start = end
          end += 17
          (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
          val1.networks.append(val2)
        self.vehicles.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.connections = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Connectivity()
        _x = val1
        start = end
        end += 24
        (_x.timeStamp, _x.srcVehicleId, _x.dstVehicleId,) = _struct_3Q.unpack(str[start:end])
        _v8 = val1.network
        _x = _v8
        start = end
        end += 17
        (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
        self.connections.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.locations = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Location()
        _x = val1
        start = end
        end += 20
        (_x.timeStamp, _x.location_ttl, _x.locationId,) = _struct_2QI.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.boundaries = []
        for i in range(0, length):
          val2 = big_actor_msgs.msg.LatLng()
          _x = val2
          start = end
          end += 16
          (_x.latitude, _x.longitude,) = _struct_2d.unpack(str[start:end])
          val1.boundaries.append(val2)
        _x = val1
        start = end
        end += 9
        (_x.minimumAltitude, _x.maximumAltitude, _x.locationType,) = _struct_2fB.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8')
        else:
          val1.name = str[start:end]
        self.locations.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.networks = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Network()
        _x = val1
        start = end
        end += 17
        (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
        self.networks.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.hostings = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Hosting()
        start = end
        end += 8
        (val1.timeStamp,) = _struct_Q.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.bigActorID = str[start:end].decode('utf-8')
        else:
          val1.bigActorID = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.vehicleName = str[start:end].decode('utf-8')
        else:
          val1.vehicleName = str[start:end]
        self.hostings.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_fI3B = struct.Struct("<fI3B")
_struct_Q = struct.Struct("<Q")
_struct_2Q = struct.Struct("<2Q")
_struct_3Q = struct.Struct("<3Q")
_struct_QB2I = struct.Struct("<QB2I")
_struct_2d = struct.Struct("<2d")
_struct_2fB = struct.Struct("<2fB")
_struct_3d = struct.Struct("<3d")
_struct_2QI = struct.Struct("<2QI")
