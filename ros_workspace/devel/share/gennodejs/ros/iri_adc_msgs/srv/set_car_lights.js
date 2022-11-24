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

class set_car_lightsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lights = null;
    }
    else {
      if (initObj.hasOwnProperty('lights')) {
        this.lights = initObj.lights
      }
      else {
        this.lights = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_car_lightsRequest
    // Serialize message field [lights]
    bufferOffset = _serializer.uint8(obj.lights, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_car_lightsRequest
    let len;
    let data = new set_car_lightsRequest(null);
    // Deserialize message field [lights]
    data.lights = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/set_car_lightsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbf39d5601e4232b41019dc5a0264ee4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CAR_OFF = 0
    uint8 CAR_NORMAL_DRIVE = 1
    uint8 CAR_BRAKE = 2
    uint8 CAR_TURN_LEFT = 3
    uint8 CAR_TURN_RIGHT = 4
    uint8 CAR_PARKED = 5
    uint8 CAR_EMERGENCY = 6
    uint8 CAR_AMBULANCE = 7
    uint8 CAR_CHARGING = 8
    
    uint8 lights
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_car_lightsRequest(null);
    if (msg.lights !== undefined) {
      resolved.lights = msg.lights;
    }
    else {
      resolved.lights = 0
    }

    return resolved;
    }
};

// Constants for message
set_car_lightsRequest.Constants = {
  CAR_OFF: 0,
  CAR_NORMAL_DRIVE: 1,
  CAR_BRAKE: 2,
  CAR_TURN_LEFT: 3,
  CAR_TURN_RIGHT: 4,
  CAR_PARKED: 5,
  CAR_EMERGENCY: 6,
  CAR_AMBULANCE: 7,
  CAR_CHARGING: 8,
}

class set_car_lightsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_car_lightsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_car_lightsResponse
    let len;
    let data = new set_car_lightsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/set_car_lightsResponse';
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
    const resolved = new set_car_lightsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: set_car_lightsRequest,
  Response: set_car_lightsResponse,
  md5sum() { return 'cbf39d5601e4232b41019dc5a0264ee4'; },
  datatype() { return 'iri_adc_msgs/set_car_lights'; }
};
