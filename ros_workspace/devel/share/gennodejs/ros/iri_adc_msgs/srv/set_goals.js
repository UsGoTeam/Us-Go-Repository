// Auto-generated. Do not edit!

// (in-package iri_adc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let adc_goal_array = require('../msg/adc_goal_array.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_goalsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goals = null;
    }
    else {
      if (initObj.hasOwnProperty('goals')) {
        this.goals = initObj.goals
      }
      else {
        this.goals = new adc_goal_array();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_goalsRequest
    // Serialize message field [goals]
    bufferOffset = adc_goal_array.serialize(obj.goals, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_goalsRequest
    let len;
    let data = new set_goalsRequest(null);
    // Deserialize message field [goals]
    data.goals = adc_goal_array.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += adc_goal_array.getMessageSize(object.goals);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/set_goalsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dcf3a4de3a9fd4fc109b76f00265887';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    adc_goal_array goals
    
    ================================================================================
    MSG: iri_adc_msgs/adc_goal_array
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
    const resolved = new set_goalsRequest(null);
    if (msg.goals !== undefined) {
      resolved.goals = adc_goal_array.Resolve(msg.goals)
    }
    else {
      resolved.goals = new adc_goal_array()
    }

    return resolved;
    }
};

class set_goalsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_goalsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_goalsResponse
    let len;
    let data = new set_goalsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/set_goalsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_goalsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: set_goalsRequest,
  Response: set_goalsResponse,
  md5sum() { return 'a170b04c96029cb68c3e3ba1b3e16f93'; },
  datatype() { return 'iri_adc_msgs/set_goals'; }
};
