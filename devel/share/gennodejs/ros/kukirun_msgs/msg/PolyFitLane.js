// Auto-generated. Do not edit!

// (in-package kukirun_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PolyFitLane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.valid = null;
      this.max_x = null;
      this.a0 = null;
      this.a1 = null;
      this.a2 = null;
      this.a3 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('max_x')) {
        this.max_x = initObj.max_x
      }
      else {
        this.max_x = 0.0;
      }
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
    // Serializes a message object of type PolyFitLane
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [max_x]
    bufferOffset = _serializer.float64(obj.max_x, buffer, bufferOffset);
    // Serialize message field [a0]
    bufferOffset = _serializer.float64(obj.a0, buffer, bufferOffset);
    // Serialize message field [a1]
    bufferOffset = _serializer.float64(obj.a1, buffer, bufferOffset);
    // Serialize message field [a2]
    bufferOffset = _serializer.float64(obj.a2, buffer, bufferOffset);
    // Serialize message field [a3]
    bufferOffset = _serializer.float64(obj.a3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PolyFitLane
    let len;
    let data = new PolyFitLane(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_x]
    data.max_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a0]
    data.a0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a1]
    data.a1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a2]
    data.a2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a3]
    data.a3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kukirun_msgs/PolyFitLane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c97efd66e05a1d80f9559b23b5c8ff5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool valid
    float64 max_x
    float64 a0
    float64 a1
    float64 a2
    float64 a3
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PolyFitLane(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.max_x !== undefined) {
      resolved.max_x = msg.max_x;
    }
    else {
      resolved.max_x = 0.0
    }

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

module.exports = PolyFitLane;
