"""autogenerated by genpy from ros_vehicle_msgs/AddStaticVehicleRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import big_actor_msgs.msg

class AddStaticVehicleRequest(genpy.Message):
  _md5sum = "f7e62f9d10b6a3dfc3711043c5ef5c9b"
  _type = "ros_vehicle_msgs/AddStaticVehicleRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """big_actor_msgs/Vehicle vehicle
bool update

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
"""
  __slots__ = ['vehicle','update']
  _slot_types = ['big_actor_msgs/Vehicle','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       vehicle,update

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AddStaticVehicleRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.vehicle is None:
        self.vehicle = big_actor_msgs.msg.Vehicle()
      if self.update is None:
        self.update = False
    else:
      self.vehicle = big_actor_msgs.msg.Vehicle()
      self.update = False

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
      buff.write(_struct_3Q3dfI3B.pack(_x.vehicle.timeStamp, _x.vehicle.vehicle_ttl, _x.vehicle.vehicleId, _x.vehicle.position.latitude, _x.vehicle.position.longitude, _x.vehicle.position.altitude, _x.vehicle.heading, _x.vehicle.taskId, _x.vehicle.taskState, _x.vehicle.vehicleState, _x.vehicle.vehicleType))
      _x = self.vehicle.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.vehicle.networks)
      buff.write(_struct_I.pack(length))
      for val1 in self.vehicle.networks:
        _x = val1
        buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      buff.write(_struct_B.pack(self.update))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.vehicle is None:
        self.vehicle = big_actor_msgs.msg.Vehicle()
      end = 0
      _x = self
      start = end
      end += 59
      (_x.vehicle.timeStamp, _x.vehicle.vehicle_ttl, _x.vehicle.vehicleId, _x.vehicle.position.latitude, _x.vehicle.position.longitude, _x.vehicle.position.altitude, _x.vehicle.heading, _x.vehicle.taskId, _x.vehicle.taskState, _x.vehicle.vehicleState, _x.vehicle.vehicleType,) = _struct_3Q3dfI3B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vehicle.name = str[start:end].decode('utf-8')
      else:
        self.vehicle.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vehicle.networks = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Network()
        _x = val1
        start = end
        end += 17
        (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
        self.vehicle.networks.append(val1)
      start = end
      end += 1
      (self.update,) = _struct_B.unpack(str[start:end])
      self.update = bool(self.update)
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
      buff.write(_struct_3Q3dfI3B.pack(_x.vehicle.timeStamp, _x.vehicle.vehicle_ttl, _x.vehicle.vehicleId, _x.vehicle.position.latitude, _x.vehicle.position.longitude, _x.vehicle.position.altitude, _x.vehicle.heading, _x.vehicle.taskId, _x.vehicle.taskState, _x.vehicle.vehicleState, _x.vehicle.vehicleType))
      _x = self.vehicle.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.vehicle.networks)
      buff.write(_struct_I.pack(length))
      for val1 in self.vehicle.networks:
        _x = val1
        buff.write(_struct_QB2I.pack(_x.timeStamp, _x.type, _x.address, _x.mask))
      buff.write(_struct_B.pack(self.update))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.vehicle is None:
        self.vehicle = big_actor_msgs.msg.Vehicle()
      end = 0
      _x = self
      start = end
      end += 59
      (_x.vehicle.timeStamp, _x.vehicle.vehicle_ttl, _x.vehicle.vehicleId, _x.vehicle.position.latitude, _x.vehicle.position.longitude, _x.vehicle.position.altitude, _x.vehicle.heading, _x.vehicle.taskId, _x.vehicle.taskState, _x.vehicle.vehicleState, _x.vehicle.vehicleType,) = _struct_3Q3dfI3B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vehicle.name = str[start:end].decode('utf-8')
      else:
        self.vehicle.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vehicle.networks = []
      for i in range(0, length):
        val1 = big_actor_msgs.msg.Network()
        _x = val1
        start = end
        end += 17
        (_x.timeStamp, _x.type, _x.address, _x.mask,) = _struct_QB2I.unpack(str[start:end])
        self.vehicle.networks.append(val1)
      start = end
      end += 1
      (self.update,) = _struct_B.unpack(str[start:end])
      self.update = bool(self.update)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B = struct.Struct("<B")
_struct_3Q3dfI3B = struct.Struct("<3Q3dfI3B")
_struct_QB2I = struct.Struct("<QB2I")
"""autogenerated by genpy from ros_vehicle_msgs/AddStaticVehicleResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ros_vehicle_msgs.msg

class AddStaticVehicleResponse(genpy.Message):
  _md5sum = "b5e8783f50e6fc581fb0ee8ecc149e7f"
  _type = "ros_vehicle_msgs/AddStaticVehicleResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """ServiceReturnBool result

================================================================================
MSG: ros_vehicle_msgs/ServiceReturnBool
bool ok
string error
"""
  __slots__ = ['result']
  _slot_types = ['ros_vehicle_msgs/ServiceReturnBool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AddStaticVehicleResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = ros_vehicle_msgs.msg.ServiceReturnBool()
    else:
      self.result = ros_vehicle_msgs.msg.ServiceReturnBool()

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
      buff.write(_struct_B.pack(self.result.ok))
      _x = self.result.error
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
      if self.result is None:
        self.result = ros_vehicle_msgs.msg.ServiceReturnBool()
      end = 0
      start = end
      end += 1
      (self.result.ok,) = _struct_B.unpack(str[start:end])
      self.result.ok = bool(self.result.ok)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result.error = str[start:end].decode('utf-8')
      else:
        self.result.error = str[start:end]
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
      buff.write(_struct_B.pack(self.result.ok))
      _x = self.result.error
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
      if self.result is None:
        self.result = ros_vehicle_msgs.msg.ServiceReturnBool()
      end = 0
      start = end
      end += 1
      (self.result.ok,) = _struct_B.unpack(str[start:end])
      self.result.ok = bool(self.result.ok)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result.error = str[start:end].decode('utf-8')
      else:
        self.result.error = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B = struct.Struct("<B")
class AddStaticVehicle(object):
  _type          = 'ros_vehicle_msgs/AddStaticVehicle'
  _md5sum = 'db50de574fdbb49c79f1b80c74e44a8e'
  _request_class  = AddStaticVehicleRequest
  _response_class = AddStaticVehicleResponse
