# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from iri_adc_msgs/adc_goal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class adc_goal(genpy.Message):
  _md5sum = "997a694e5c5bce1148d1ef6403aee244"
  _type = "iri_adc_msgs/adc_goal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#type definitions
uint8 PASSTHROUGH_GOAL=0
uint8 STOP_GOAL=1
uint8 PARKING_GOAL=2

string id       # goal identifier
float32 x       # x coordinates in meters [m]
float32 y       # y coordinate in meters [m]
float32 yaw     # yaw orientation in radians [rad]
int32 type      # see type definitions above
"""
  # Pseudo-constants
  PASSTHROUGH_GOAL = 0
  STOP_GOAL = 1
  PARKING_GOAL = 2

  __slots__ = ['id','x','y','yaw','type']
  _slot_types = ['string','float32','float32','float32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,x,y,yaw,type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(adc_goal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = ''
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.type is None:
        self.type = 0
    else:
      self.id = ''
      self.x = 0.
      self.y = 0.
      self.yaw = 0.
      self.type = 0

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
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3fi().pack(_x.x, _x.y, _x.yaw, _x.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.x, _x.y, _x.yaw, _x.type,) = _get_struct_3fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3fi().pack(_x.x, _x.y, _x.yaw, _x.type))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.x, _x.y, _x.yaw, _x.type,) = _get_struct_3fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fi = None
def _get_struct_3fi():
    global _struct_3fi
    if _struct_3fi is None:
        _struct_3fi = struct.Struct("<3fi")
    return _struct_3fi
