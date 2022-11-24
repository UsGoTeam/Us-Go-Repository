// Auto-generated. Do not edit!

// (in-package iri_adc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let adc_goal = require('./adc_goal.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class adc_goal_array {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.goals = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('goals')) {
        this.goals = initObj.goals
      }
      else {
        this.goals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type adc_goal_array
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [goals]
    // Serialize the length for message field [goals]
    bufferOffset = _serializer.uint32(obj.goals.length, buffer, bufferOffset);
    obj.goals.forEach((val) => {
      bufferOffset = adc_goal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type adc_goal_array
    let len;
    let data = new adc_goal_array(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [goals]
    // Deserialize array length for message field [goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goals[i] = adc_goal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.goals.forEach((val) => {
      length += adc_goal.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'iri_adc_msgs/adc_goal_array';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4c070bca6927a2df953aeda1b99b77a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header     header
    adc_goal[] goals
    
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
    MSG: iri_adc_msgs/adc_goal
    #type definitions
    uint8 PASSTHROUGH_GOAL=0
    uint8 STOP_GOAL=1
    uint8 PARKING_GOAL=2
    
    string id       # goal identifier
    float32 x       # x coordinates in meters [m]
    float32 y       # y coordinate in meters [m]
    float32 yaw     # yaw orientation in radians [rad]
    int32 type      # see type definitions above
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new adc_goal_array(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.goals !== undefined) {
      resolved.goals = new Array(msg.goals.length);
      for (let i = 0; i < resolved.goals.length; ++i) {
        resolved.goals[i] = adc_goal.Resolve(msg.goals[i]);
      }
    }
    else {
      resolved.goals = []
    }

    return resolved;
    }
};

module.exports = adc_goal_array;
