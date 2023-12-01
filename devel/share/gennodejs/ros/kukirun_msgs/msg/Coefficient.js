// Auto-generated. Do not edit!

// (in-package kukirun_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Coefficient {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a0 = null;
      this.a1 = null;
      this.a2 = null;
      this.a3 = null;
    }
    else {
      if (initObj.hasOwnProperty('a0')) {
        this.a0 = initObj.a0
      }
      else {
        this.a0 = 0.0;
      }
      if (initObj.hasOwnProperty('a1')) {
        this.a1 = initObj.a1
      }
      else {
        this.a1 = 0.0;
      }
      if (initObj.hasOwnProperty('a2')) {
        this.a2 = initObj.a2
      }
      else {
        this.a2 = 0.0;
      }
      if (initObj.hasOwnProperty('a3')) {
        this.a3 = initObj.a3
      }
      else {
        this.a3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Coefficient
    // Serialize message field [a0]
    bufferOffset = _serializer.float32(obj.a0, buffer, bufferOffset);
    // Serialize message field [a1]
    bufferOffset = _serializer.float32(obj.a1, buffer, bufferOffset);
    // Serialize message field [a2]
    bufferOffset = _serializer.float32(obj.a2, buffer, bufferOffset);
    // Serialize message field [a3]
    bufferOffset = _serializer.float32(obj.a3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Coefficient
    let len;
    let data = new Coefficient(null);
    // Deserialize message field [a0]
    data.a0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a1]
    data.a1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a2]
    data.a2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a3]
    data.a3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kukirun_msgs/Coefficient';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02922718d211cab15568610aec8c412d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 a0
    float32 a1
    float32 a2
    float32 a3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Coefficient(null);
    if (msg.a0 !== undefined) {
      resolved.a0 = msg.a0;
    }
    else {
      resolved.a0 = 0.0
    }

    if (msg.a1 !== undefined) {
      resolved.a1 = msg.a1;
    }
    else {
      resolved.a1 = 0.0
    }

    if (msg.a2 !== undefined) {
      resolved.a2 = msg.a2;
    }
    else {
      resolved.a2 = 0.0
    }

    if (msg.a3 !== undefined) {
      resolved.a3 = msg.a3;
    }
    else {
      resolved.a3 = 0.0
    }

    return resolved;
    }
};

module.exports = Coefficient;
