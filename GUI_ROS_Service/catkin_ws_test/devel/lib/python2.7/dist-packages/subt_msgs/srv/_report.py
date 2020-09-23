# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from subt_msgs/reportRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import subt_msgs.msg

class reportRequest(genpy.Message):
  _md5sum = "30502186e4f3b4efefe5fcdb32980b4d"
  _type = "subt_msgs/reportRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#Request data
ArtifactPose artifact

================================================================================
MSG: subt_msgs/ArtifactPose
string Class
#string status				# O for non_return , X for return 
int32 appear_count
float64 probability
geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['artifact']
  _slot_types = ['subt_msgs/ArtifactPose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       artifact

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(reportRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.artifact is None:
        self.artifact = subt_msgs.msg.ArtifactPose()
    else:
      self.artifact = subt_msgs.msg.ArtifactPose()

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
      _x = self.artifact.Class
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i8d().pack(_x.artifact.appear_count, _x.artifact.probability, _x.artifact.pose.position.x, _x.artifact.pose.position.y, _x.artifact.pose.position.z, _x.artifact.pose.orientation.x, _x.artifact.pose.orientation.y, _x.artifact.pose.orientation.z, _x.artifact.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.artifact is None:
        self.artifact = subt_msgs.msg.ArtifactPose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.artifact.Class = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.artifact.Class = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.artifact.appear_count, _x.artifact.probability, _x.artifact.pose.position.x, _x.artifact.pose.position.y, _x.artifact.pose.position.z, _x.artifact.pose.orientation.x, _x.artifact.pose.orientation.y, _x.artifact.pose.orientation.z, _x.artifact.pose.orientation.w,) = _get_struct_i8d().unpack(str[start:end])
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
      _x = self.artifact.Class
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i8d().pack(_x.artifact.appear_count, _x.artifact.probability, _x.artifact.pose.position.x, _x.artifact.pose.position.y, _x.artifact.pose.position.z, _x.artifact.pose.orientation.x, _x.artifact.pose.orientation.y, _x.artifact.pose.orientation.z, _x.artifact.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.artifact is None:
        self.artifact = subt_msgs.msg.ArtifactPose()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.artifact.Class = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.artifact.Class = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.artifact.appear_count, _x.artifact.probability, _x.artifact.pose.position.x, _x.artifact.pose.position.y, _x.artifact.pose.position.z, _x.artifact.pose.orientation.x, _x.artifact.pose.orientation.y, _x.artifact.pose.orientation.z, _x.artifact.pose.orientation.w,) = _get_struct_i8d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i8d = None
def _get_struct_i8d():
    global _struct_i8d
    if _struct_i8d is None:
        _struct_i8d = struct.Struct("<i8d")
    return _struct_i8d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from subt_msgs/reportResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class reportResponse(genpy.Message):
  _md5sum = "c22f2a1ed8654a0b365f1bb3f7ff2c0f"
  _type = "subt_msgs/reportResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#Response data
string result

"""
  __slots__ = ['result']
  _slot_types = ['string']

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
      super(reportResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = ''
    else:
      self.result = ''

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
      _x = self.result
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.result = str[start:end]
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
      _x = self.result
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.result = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.result = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class report(object):
  _type          = 'subt_msgs/report'
  _md5sum = 'd571fa3f7149c57374206fa01faa05ff'
  _request_class  = reportRequest
  _response_class = reportResponse
