// Auto-generated. Do not edit!

// (in-package pkg_testservice.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class img_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = '';
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type img_srvRequest
    // Serialize message field [color]
    bufferOffset = _serializer.string(obj.color, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = _serializer.int64(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type img_srvRequest
    let len;
    let data = new img_srvRequest(null);
    // Deserialize message field [color]
    data.color = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.color.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pkg_testservice/img_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e48e257e7d83440763cd8fff40e9c0fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string color
    int64 point
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new img_srvRequest(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = ''
    }

    if (msg.point !== undefined) {
      resolved.point = msg.point;
    }
    else {
      resolved.point = 0
    }

    return resolved;
    }
};

class img_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.responce = null;
    }
    else {
      if (initObj.hasOwnProperty('responce')) {
        this.responce = initObj.responce
      }
      else {
        this.responce = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type img_srvResponse
    // Serialize message field [responce]
    bufferOffset = _serializer.int64(obj.responce, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type img_srvResponse
    let len;
    let data = new img_srvResponse(null);
    // Deserialize message field [responce]
    data.responce = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pkg_testservice/img_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abb5665075b598260ff68fa474c18ad6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 responce
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new img_srvResponse(null);
    if (msg.responce !== undefined) {
      resolved.responce = msg.responce;
    }
    else {
      resolved.responce = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: img_srvRequest,
  Response: img_srvResponse,
  md5sum() { return '344046330d50eb39af6c3963f87cb9cd'; },
  datatype() { return 'pkg_testservice/img_srv'; }
};
