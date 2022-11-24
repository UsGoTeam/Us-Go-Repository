// Auto-generated. Do not edit!

// (in-package iri_adc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_semaphoreRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_semaphoreRequest
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_semaphoreRequest
    let len;
    let data = new set_semaphoreRequest(null);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/set_semaphoreRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a2c1112df73325ba59340ec2e040a3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SEM_OFF = 0
    uint8 SEM_RED = 1
    uint8 SEM_GREEN = 2
    uint8 SEM_ORANGE_BLINK = 3
    
    uint8 color
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_semaphoreRequest(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    return resolved;
    }
};

// Constants for message
set_semaphoreRequest.Constants = {
  SEM_OFF: 0,
  SEM_RED: 1,
  SEM_GREEN: 2,
  SEM_ORANGE_BLINK: 3,
}

class set_semaphoreResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_semaphoreResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_semaphoreResponse
    let len;
    let data = new set_semaphoreResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/set_semaphoreResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_semaphoreResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: set_semaphoreRequest,
  Response: set_semaphoreResponse,
  md5sum() { return '3a2c1112df73325ba59340ec2e040a3c'; },
  datatype() { return 'iri_adc_msgs/set_semaphore'; }
};
