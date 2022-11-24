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

let adc_opendrive_nodes = require('../msg/adc_opendrive_nodes.js');

//-----------------------------------------------------------

class get_opendrive_nodesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_opendrive_nodesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_opendrive_nodesRequest
    let len;
    let data = new get_opendrive_nodesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/get_opendrive_nodesRequest';
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
    const resolved = new get_opendrive_nodesRequest(null);
    return resolved;
    }
};

class get_opendrive_nodesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.opendrive_nodes = null;
    }
    else {
      if (initObj.hasOwnProperty('opendrive_nodes')) {
        this.opendrive_nodes = initObj.opendrive_nodes
      }
      else {
        this.opendrive_nodes = new adc_opendrive_nodes();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_opendrive_nodesResponse
    // Serialize message field [opendrive_nodes]
    bufferOffset = adc_opendrive_nodes.serialize(obj.opendrive_nodes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_opendrive_nodesResponse
    let len;
    let data = new get_opendrive_nodesResponse(null);
    // Deserialize message field [opendrive_nodes]
    data.opendrive_nodes = adc_opendrive_nodes.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += adc_opendrive_nodes.getMessageSize(object.opendrive_nodes);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/get_opendrive_nodesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aeb03ca3f6c21b8df58026d567d3563';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    iri_adc_msgs/adc_opendrive_nodes opendrive_nodes
    
    
    ================================================================================
    MSG: iri_adc_msgs/adc_opendrive_nodes
    Header header
    uint32[] nodes
    
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
    const resolved = new get_opendrive_nodesResponse(null);
    if (msg.opendrive_nodes !== undefined) {
      resolved.opendrive_nodes = adc_opendrive_nodes.Resolve(msg.opendrive_nodes)
    }
    else {
      resolved.opendrive_nodes = new adc_opendrive_nodes()
    }

    return resolved;
    }
};

module.exports = {
  Request: get_opendrive_nodesRequest,
  Response: get_opendrive_nodesResponse,
  md5sum() { return '5aeb03ca3f6c21b8df58026d567d3563'; },
  datatype() { return 'iri_adc_msgs/get_opendrive_nodes'; }
};
