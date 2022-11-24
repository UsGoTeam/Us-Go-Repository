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

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class get_opendrive_mapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_opendrive_mapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_opendrive_mapRequest
    let len;
    let data = new get_opendrive_mapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/get_opendrive_mapRequest';
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
    const resolved = new get_opendrive_mapRequest(null);
    return resolved;
    }
};

class get_opendrive_mapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.opendrive_map = null;
    }
    else {
      if (initObj.hasOwnProperty('opendrive_map')) {
        this.opendrive_map = initObj.opendrive_map
      }
      else {
        this.opendrive_map = new nav_msgs.msg.OccupancyGrid();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_opendrive_mapResponse
    // Serialize message field [opendrive_map]
    bufferOffset = nav_msgs.msg.OccupancyGrid.serialize(obj.opendrive_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_opendrive_mapResponse
    let len;
    let data = new get_opendrive_mapResponse(null);
    // Deserialize message field [opendrive_map]
    data.opendrive_map = nav_msgs.msg.OccupancyGrid.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.OccupancyGrid.getMessageSize(object.opendrive_map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'iri_adc_msgs/get_opendrive_mapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '803342621a8afb88f3009bae39025db7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/OccupancyGrid opendrive_map
    
    
    ================================================================================
    MSG: nav_msgs/OccupancyGrid
    # This represents a 2-D grid map, in which each cell represents the probability of
    # occupancy.
    
    Header header 
    
    #MetaData for the map
    MapMetaData info
    
    # The map data, in row-major order, starting with (0,0).  Occupancy
    # probabilities are in the range [0,100].  Unknown is -1.
    int8[] data
    
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
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_opendrive_mapResponse(null);
    if (msg.opendrive_map !== undefined) {
      resolved.opendrive_map = nav_msgs.msg.OccupancyGrid.Resolve(msg.opendrive_map)
    }
    else {
      resolved.opendrive_map = new nav_msgs.msg.OccupancyGrid()
    }

    return resolved;
    }
};

module.exports = {
  Request: get_opendrive_mapRequest,
  Response: get_opendrive_mapResponse,
  md5sum() { return '803342621a8afb88f3009bae39025db7'; },
  datatype() { return 'iri_adc_msgs/get_opendrive_map'; }
};
