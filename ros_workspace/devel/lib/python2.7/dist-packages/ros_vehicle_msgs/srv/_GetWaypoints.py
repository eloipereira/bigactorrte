"""autogenerated by genpy from ros_vehicle_msgs/GetWaypointsRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetWaypointsRequest(genpy.Message):
  _md5sum = "140ad1280f5e5a8f9cbec459fbe7f459"
  _type = "ros_vehicle_msgs/GetWaypointsRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint16 vehicleId

"""
  __slots__ = ['vehicleId']
  _slot_types = ['uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       vehicleId

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetWaypointsRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.vehicleId is None:
        self.vehicleId = 0
    else:
      self.vehicleId = 0

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
      buff.write(_struct_H.pack(self.vehicleId))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 2
      (self.vehicleId,) = _struct_H.unpack(str[start:end])
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
      buff.write(_struct_H.pack(self.vehicleId))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 2
      (self.vehicleId,) = _struct_H.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_H = struct.Struct("<H")
"""autogenerated by genpy from ros_vehicle_msgs/GetWaypointsResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import big_actor_msgs.msg
import ros_vehicle_msgs.msg
import std_msgs.msg

class GetWaypointsResponse(genpy.Message):
  _md5sum = "6b89e446d4420ec556977e9036f3bb74"
  _type = "ros_vehicle_msgs/GetWaypointsResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Waypoint[] waypoints
ServiceReturnBool result


================================================================================
MSG: ros_vehicle_msgs/Waypoint
Header                      header
uint16                      waypointId
uint16                      nextWp
uint16                      previousWp
bool                        start
bool                        stop
bool                        home
big_actor_msgs/LatLngAlt    position
LoiterData                  loiter

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
================================================================================
MSG: ros_vehicle_msgs/LoiterData
bool active             #have loiter definition 
uint16 radius           #radius of loiter in metters  
uint16 time_sec         #time in seconds to be in loiter
uint16 times            #number of loiters to do 
bool clockwise          #go clockwise direction    

================================================================================
MSG: ros_vehicle_msgs/ServiceReturnBool
bool ok
string error
"""
  __slots__ = ['waypoints','result']
  _slot_types = ['ros_vehicle_msgs/Waypoint[]','ros_vehicle_msgs/ServiceReturnBool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       waypoints,result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetWaypointsResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.waypoints is None:
        self.waypoints = []
      if self.result is None:
        self.result = ros_vehicle_msgs.msg.ServiceReturnBool()
    else:
      self.waypoints = []
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
      length = len(self.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.waypoints:
        _v1 = val1.header
        buff.write(_struct_I.pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_3H3B.pack(_x.waypointId, _x.nextWp, _x.previousWp, _x.start, _x.stop, _x.home))
        _v3 = val1.position
        _x = _v3
        buff.write(_struct_3d.pack(_x.latitude, _x.longitude, _x.altitude))
        _v4 = val1.loiter
        _x = _v4
        buff.write(_struct_B3HB.pack(_x.active, _x.radius, _x.time_sec, _x.times, _x.clockwise))
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
      if self.waypoints is None:
        self.waypoints = None
      if self.result is None:
        self.result = ros_vehicle_msgs.msg.ServiceReturnBool()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.waypoints = []
      for i in range(0, length):
        val1 = ros_vehicle_msgs.msg.Waypoint()
        _v5 = val1.header
        start = end
        end += 4
        (_v5.seq,) = _struct_I.unpack(str[start:end])
        _v6 = _v5.stamp
        _x = _v6
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.frame_id = str[start:end].decode('utf-8')
        else:
          _v5.frame_id = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.waypointId, _x.nextWp, _x.previousWp, _x.start, _x.stop, _x.home,) = _struct_3H3B.unpack(str[start:end])
        val1.start = bool(val1.start)
        val1.stop = bool(val1.stop)
        val1.home = bool(val1.home)
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.latitude, _x.longitude, _x.altitude,) = _struct_3d.unpack(str[start:end])
        _v8 = val1.loiter
        _x = _v8
        start = end
        end += 8
        (_x.active, _x.radius, _x.time_sec, _x.times, _x.clockwise,) = _struct_B3HB.unpack(str[start:end])
        _v8.active = bool(_v8.active)
        _v8.clockwise = bool(_v8.clockwise)
        self.waypoints.append(val1)
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
      length = len(self.waypoints)
      buff.write(_struct_I.pack(length))
      for val1 in self.waypoints:
        _v9 = val1.header
        buff.write(_struct_I.pack(_v9.seq))
        _v10 = _v9.stamp
        _x = _v10
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v9.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_3H3B.pack(_x.waypointId, _x.nextWp, _x.previousWp, _x.start, _x.stop, _x.home))
        _v11 = val1.position
        _x = _v11
        buff.write(_struct_3d.pack(_x.latitude, _x.longitude, _x.altitude))
        _v12 = val1.loiter
        _x = _v12
        buff.write(_struct_B3HB.pack(_x.active, _x.radius, _x.time_sec, _x.times, _x.clockwise))
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
      if self.waypoints is None:
        self.waypoints = None
      if self.result is None:
        self.result = ros_vehicle_msgs.msg.ServiceReturnBool()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.waypoints = []
      for i in range(0, length):
        val1 = ros_vehicle_msgs.msg.Waypoint()
        _v13 = val1.header
        start = end
        end += 4
        (_v13.seq,) = _struct_I.unpack(str[start:end])
        _v14 = _v13.stamp
        _x = _v14
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v13.frame_id = str[start:end].decode('utf-8')
        else:
          _v13.frame_id = str[start:end]
        _x = val1
        start = end
        end += 9
        (_x.waypointId, _x.nextWp, _x.previousWp, _x.start, _x.stop, _x.home,) = _struct_3H3B.unpack(str[start:end])
        val1.start = bool(val1.start)
        val1.stop = bool(val1.stop)
        val1.home = bool(val1.home)
        _v15 = val1.position
        _x = _v15
        start = end
        end += 24
        (_x.latitude, _x.longitude, _x.altitude,) = _struct_3d.unpack(str[start:end])
        _v16 = val1.loiter
        _x = _v16
        start = end
        end += 8
        (_x.active, _x.radius, _x.time_sec, _x.times, _x.clockwise,) = _struct_B3HB.unpack(str[start:end])
        _v16.active = bool(_v16.active)
        _v16.clockwise = bool(_v16.clockwise)
        self.waypoints.append(val1)
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
_struct_3H3B = struct.Struct("<3H3B")
_struct_B3HB = struct.Struct("<B3HB")
_struct_2I = struct.Struct("<2I")
_struct_3d = struct.Struct("<3d")
class GetWaypoints(object):
  _type          = 'ros_vehicle_msgs/GetWaypoints'
  _md5sum = '37560f72d0b1c9e36f8ce9a81e339b28'
  _request_class  = GetWaypointsRequest
  _response_class = GetWaypointsResponse
