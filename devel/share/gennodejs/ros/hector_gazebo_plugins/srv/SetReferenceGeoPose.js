// Auto-generated. Do not edit!

// (in-package hector_gazebo_plugins.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geographic_msgs = _finder('geographic_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetReferenceGeoPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.geo_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('geo_pose')) {
        this.geo_pose = initObj.geo_pose
      }
      else {
        this.geo_pose = new geographic_msgs.msg.GeoPose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetReferenceGeoPoseRequest
    // Serialize message field [geo_pose]
    bufferOffset = geographic_msgs.msg.GeoPose.serialize(obj.geo_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetReferenceGeoPoseRequest
    let len;
    let data = new SetReferenceGeoPoseRequest(null);
    // Deserialize message field [geo_pose]
    data.geo_pose = geographic_msgs.msg.GeoPose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_gazebo_plugins/SetReferenceGeoPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe903ca95d0210defda73a1629604439';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geographic_msgs/GeoPose geo_pose
    
    ================================================================================
    MSG: geographic_msgs/GeoPose
    # Geographic pose, using the WGS 84 reference ellipsoid.
    #
    # Orientation uses the East-North-Up (ENU) frame of reference.
    # (But, what about singularities at the poles?)
    
    GeoPoint position
    geometry_msgs/Quaternion orientation
    
    ================================================================================
    MSG: geographic_msgs/GeoPoint
    # Geographic point, using the WGS 84 reference ellipsoid.
    
    # Latitude [degrees]. Positive is north of equator; negative is south
    # (-90 <= latitude <= +90).
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is
    # west (-180 <= longitude <= +180). At the poles, latitude is -90 or
    # +90, and longitude is irrelevant, but must be in range.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
    float64 altitude
    
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
    const resolved = new SetReferenceGeoPoseRequest(null);
    if (msg.geo_pose !== undefined) {
      resolved.geo_pose = geographic_msgs.msg.GeoPose.Resolve(msg.geo_pose)
    }
    else {
      resolved.geo_pose = new geographic_msgs.msg.GeoPose()
    }

    return resolved;
    }
};

class SetReferenceGeoPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetReferenceGeoPoseResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetReferenceGeoPoseResponse
    let len;
    let data = new SetReferenceGeoPoseResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hector_gazebo_plugins/SetReferenceGeoPoseResponse';
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
    const resolved = new SetReferenceGeoPoseResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetReferenceGeoPoseRequest,
  Response: SetReferenceGeoPoseResponse,
  md5sum() { return 'fe903ca95d0210defda73a1629604439'; },
  datatype() { return 'hector_gazebo_plugins/SetReferenceGeoPose'; }
};
