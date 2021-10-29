// Auto-generated. Do not edit!

// (in-package inverse_problem_srv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class publish_cmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointState = null;
    }
    else {
      if (initObj.hasOwnProperty('jointState')) {
        this.jointState = initObj.jointState
      }
      else {
        this.jointState = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type publish_cmdRequest
    // Serialize message field [jointState]
    bufferOffset = _serializer.string(obj.jointState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type publish_cmdRequest
    let len;
    let data = new publish_cmdRequest(null);
    // Deserialize message field [jointState]
    data.jointState = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.jointState);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inverse_problem_srv/publish_cmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ef9169302944380b1360b90aedc31a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string jointState 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new publish_cmdRequest(null);
    if (msg.jointState !== undefined) {
      resolved.jointState = msg.jointState;
    }
    else {
      resolved.jointState = ''
    }

    return resolved;
    }
};

class publish_cmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type publish_cmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type publish_cmdResponse
    let len;
    let data = new publish_cmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inverse_problem_srv/publish_cmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new publish_cmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: publish_cmdRequest,
  Response: publish_cmdResponse,
  md5sum() { return 'd6ac0cf017b131c2669cb2b0322255b3'; },
  datatype() { return 'inverse_problem_srv/publish_cmd'; }
};
