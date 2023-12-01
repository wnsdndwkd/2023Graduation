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

class Turn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.exist = null;
    }
    else {
      if (initObj.hasOwnProperty('exist')) {
        this.exist = initObj.exist
      }
      else {
        this.exist = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Turn
    // Serialize message field [exist]
    bufferOffset = _serializer.bool(obj.exist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Turn
    let len;
    let data = new Turn(null);
    // Deserialize message field [exist]
    data.exist = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kukirun_msgs/Turn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86055aa20f8115cdfd4917a9e28d29bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool exist
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Turn(null);
    if (msg.exist !== undefined) {
      resolved.exist = msg.exist;
    }
    else {
      resolved.exist = false
    }

    return resolved;
    }
};

module.exports = Turn;
