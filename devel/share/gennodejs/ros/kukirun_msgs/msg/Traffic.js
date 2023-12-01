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

class Traffic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trafficsign = null;
      this.trafficsign_1 = null;
      this.trafficsign_2 = null;
      this.trafficsign_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('trafficsign')) {
        this.trafficsign = initObj.trafficsign
      }
      else {
        this.trafficsign = 0;
      }
      if (initObj.hasOwnProperty('trafficsign_1')) {
        this.trafficsign_1 = initObj.trafficsign_1
      }
      else {
        this.trafficsign_1 = 0;
      }
      if (initObj.hasOwnProperty('trafficsign_2')) {
        this.trafficsign_2 = initObj.trafficsign_2
      }
      else {
        this.trafficsign_2 = 0;
      }
      if (initObj.hasOwnProperty('trafficsign_3')) {
        this.trafficsign_3 = initObj.trafficsign_3
      }
      else {
        this.trafficsign_3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Traffic
    // Serialize message field [trafficsign]
    bufferOffset = _serializer.int32(obj.trafficsign, buffer, bufferOffset);
    // Serialize message field [trafficsign_1]
    bufferOffset = _serializer.int32(obj.trafficsign_1, buffer, bufferOffset);
    // Serialize message field [trafficsign_2]
    bufferOffset = _serializer.int32(obj.trafficsign_2, buffer, bufferOffset);
    // Serialize message field [trafficsign_3]
    bufferOffset = _serializer.int32(obj.trafficsign_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Traffic
    let len;
    let data = new Traffic(null);
    // Deserialize message field [trafficsign]
    data.trafficsign = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trafficsign_1]
    data.trafficsign_1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trafficsign_2]
    data.trafficsign_2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trafficsign_3]
    data.trafficsign_3 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kukirun_msgs/Traffic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c68a17eb503576fe17e72e4e585ded61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 trafficsign
    int32 trafficsign_1
    int32 trafficsign_2
    int32 trafficsign_3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Traffic(null);
    if (msg.trafficsign !== undefined) {
      resolved.trafficsign = msg.trafficsign;
    }
    else {
      resolved.trafficsign = 0
    }

    if (msg.trafficsign_1 !== undefined) {
      resolved.trafficsign_1 = msg.trafficsign_1;
    }
    else {
      resolved.trafficsign_1 = 0
    }

    if (msg.trafficsign_2 !== undefined) {
      resolved.trafficsign_2 = msg.trafficsign_2;
    }
    else {
      resolved.trafficsign_2 = 0
    }

    if (msg.trafficsign_3 !== undefined) {
      resolved.trafficsign_3 = msg.trafficsign_3;
    }
    else {
      resolved.trafficsign_3 = 0
    }

    return resolved;
    }
};

module.exports = Traffic;
