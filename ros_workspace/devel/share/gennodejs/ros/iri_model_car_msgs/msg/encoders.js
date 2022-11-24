// Auto-generated. Do not edit!

// (in-package iri_model_car_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class encoders {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_ticks = null;
      this.left_forward = null;
      this.right_ticks = null;
      this.right_forward = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_ticks')) {
        this.left_ticks = initObj.left_ticks
      }
      else {
        this.left_ticks = 0;
      }
      if (initObj.hasOwnProperty('left_forward')) {
        this.left_forward = initObj.left_forward
      }
      else {
        this.left_forward = false;
      }
      if (initObj.hasOwnProperty('right_ticks')) {
        this.right_ticks = initObj.right_ticks
      }
      else {
        this.right_ticks = 0;
      }
      if (initObj.hasOwnProperty('right_forward')) {
        this.right_forward = initObj.right_forward
      }
      else {
        this.right_forward = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type encoders
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_ticks]
    bufferOffset = _serializer.int32(obj.left_ticks, buffer, bufferOffset);
    // Serialize message field [left_forward]
    bufferOffset = _serializer.bool(obj.left_forward, buffer, bufferOffset);
    // Serialize message field [right_ticks]
    bufferOffset = _serializer.int32(obj.right_ticks, buffer, bufferOffset);
    // Serialize message field [right_forward]
    bufferOffset = _serializer.bool(obj.right_forward, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type encoders
    let len;
    let data = new encoders(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_ticks]
    data.left_ticks = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_forward]
    data.left_forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_ticks]
    data.right_ticks = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_forward]
    data.right_forward = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iri_model_car_msgs/encoders';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04e73434e714ecf842b1891215a2b24e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 left_ticks
    bool left_forward
    int32 right_ticks
    bool right_forward
    
    
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
    const resolved = new encoders(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_ticks !== undefined) {
      resolved.left_ticks = msg.left_ticks;
    }
    else {
      resolved.left_ticks = 0
    }

    if (msg.left_forward !== undefined) {
      resolved.left_forward = msg.left_forward;
    }
    else {
      resolved.left_forward = false
    }

    if (msg.right_ticks !== undefined) {
      resolved.right_ticks = msg.right_ticks;
    }
    else {
      resolved.right_ticks = 0
    }

    if (msg.right_forward !== undefined) {
      resolved.right_forward = msg.right_forward;
    }
    else {
      resolved.right_forward = false
    }

    return resolved;
    }
};

module.exports = encoders;
