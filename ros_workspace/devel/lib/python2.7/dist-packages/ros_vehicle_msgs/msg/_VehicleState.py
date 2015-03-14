"""autogenerated by genpy from ros_vehicle_msgs/VehicleState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import big_actor_msgs.msg
import std_msgs.msg

class VehicleState(genpy.Message):
  _md5sum = "d84f85c3ed5cd38dd484eebcb983d077"
  _type = "ros_vehicle_msgs/VehicleState"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header                      header
uint64                      vehicleId
uint8                       vehicleType
uint8                       vehicleNetwork
big_actor_msgs/LatLngAlt    position
float32                     heading
float32                     vx
float32                     vy
float32                     vz

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: big_actor_msgs/LatLngAlt
float64 latitude
float64 longitude
float64 altitude
"""
  __slots__ = ['header','vehicleId','vehicleType','vehicleNetwork','position','heading','vx','vy','vz']
  _slot_types = ['std_msgs/Header','uint64','uint8','uint8','big_actor_msgs/LatLngAlt','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,vehicleId,vehicleType,vehicleNetwork,position,heading,vx,vy,vz

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.vehicleId is None:
        self.vehicleId = 0
      if self.vehicleType is None:
        self.vehicleType = 0
      if self.vehicleNetwork is None:
        self.vehicleNetwork = 0
      if self.position is None:
        self.position = big_actor_msgs.msg.LatLngAlt()
      if self.heading is None:
        self.heading = 0.
      if self.vx is None:
        self.vx = 0.
      if self.vy is None:
        self.vy = 0.
      if self.vz is None:
        self.vz = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.vehicleId = 0
      self.vehicleType = 0
      self.vehicleNetwork = 0
      self.position = big_actor_msgs.msg.LatLngAlt()
      self.heading = 0.
      self.vx = 0.
      self.vy = 0.
      self.vz = 0.

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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_Q2B3d4f.pack(_x.vehicleId, _x.vehicleType, _x.vehicleNetwork, _x.position.latitude, _x.position.longitude, _x.position.altitude, _x.heading, _x.vx, _x.vy, _x.vz))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.position is None:
        self.position = big_actor_msgs.msg.LatLngAlt()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 50
      (_x.vehicleId, _x.vehicleType, _x.vehicleNetwork, _x.position.latitude, _x.position.longitude, _x.position.altitude, _x.heading, _x.vx, _x.vy, _x.vz,) = _struct_Q2B3d4f.unpack(str[start:end])
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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_Q2B3d4f.pack(_x.vehicleId, _x.vehicleType, _x.vehicleNetwork, _x.position.latitude, _x.position.longitude, _x.position.altitude, _x.heading, _x.vx, _x.vy, _x.vz))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.position is None:
        self.position = big_actor_msgs.msg.LatLngAlt()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 50
      (_x.vehicleId, _x.vehicleType, _x.vehicleNetwork, _x.position.latitude, _x.position.longitude, _x.position.altitude, _x.heading, _x.vx, _x.vy, _x.vz,) = _struct_Q2B3d4f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_Q2B3d4f = struct.Struct("<Q2B3d4f")
_struct_3I = struct.Struct("<3I")
