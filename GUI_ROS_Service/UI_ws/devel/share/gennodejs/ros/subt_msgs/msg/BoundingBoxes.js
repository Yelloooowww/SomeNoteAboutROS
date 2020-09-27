// Auto-generated. Do not edit!

// (in-package subt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox = require('./BoundingBox.js');
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BoundingBoxes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.camera = null;
      this.count = null;
      this.bounding_boxes = null;
      this.depth = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = '';
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('bounding_boxes')) {
        this.bounding_boxes = initObj.bounding_boxes
      }
      else {
        this.bounding_boxes = [];
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBoxes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = _serializer.string(obj.camera, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [bounding_boxes]
    // Serialize the length for message field [bounding_boxes]
    bufferOffset = _serializer.uint32(obj.bounding_boxes.length, buffer, bufferOffset);
    obj.bounding_boxes.forEach((val) => {
      bufferOffset = BoundingBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [depth]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBoxes
    let len;
    let data = new BoundingBoxes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bounding_boxes]
    // Deserialize array length for message field [bounding_boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bounding_boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bounding_boxes[i] = BoundingBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [depth]
    data.depth = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.camera.length;
    object.bounding_boxes.forEach((val) => {
      length += BoundingBox.getMessageSize(val);
    });
    length += sensor_msgs.msg.Image.getMessageSize(object.depth);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'subt_msgs/BoundingBoxes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03486b410864ff4b512ea774896cd13c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string camera
    int32 count
    BoundingBox[] bounding_boxes
    sensor_msgs/Image depth
    
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
    string frame_id
    
    ================================================================================
    MSG: subt_msgs/BoundingBox
    string Class
    float64 probability
    int64 xmin
    int64 ymin
    int64 xmax
    int64 ymax
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBoxes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = ''
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.bounding_boxes !== undefined) {
      resolved.bounding_boxes = new Array(msg.bounding_boxes.length);
      for (let i = 0; i < resolved.bounding_boxes.length; ++i) {
        resolved.bounding_boxes[i] = BoundingBox.Resolve(msg.bounding_boxes[i]);
      }
    }
    else {
      resolved.bounding_boxes = []
    }

    if (msg.depth !== undefined) {
      resolved.depth = sensor_msgs.msg.Image.Resolve(msg.depth)
    }
    else {
      resolved.depth = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = BoundingBoxes;
