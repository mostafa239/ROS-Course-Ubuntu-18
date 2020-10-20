// Auto-generated. Do not edit!

// (in-package robotics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class num_of_wordsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mystring = null;
    }
    else {
      if (initObj.hasOwnProperty('mystring')) {
        this.mystring = initObj.mystring
      }
      else {
        this.mystring = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type num_of_wordsRequest
    // Serialize message field [mystring]
    bufferOffset = _serializer.string(obj.mystring, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type num_of_wordsRequest
    let len;
    let data = new num_of_wordsRequest(null);
    // Deserialize message field [mystring]
    data.mystring = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mystring.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics/num_of_wordsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8054fff057e825e73968032a7c26bc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mystring
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new num_of_wordsRequest(null);
    if (msg.mystring !== undefined) {
      resolved.mystring = msg.mystring;
    }
    else {
      resolved.mystring = ''
    }

    return resolved;
    }
};

class num_of_wordsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type num_of_wordsResponse
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type num_of_wordsResponse
    let len;
    let data = new num_of_wordsResponse(null);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotics/num_of_wordsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '602d642babe509c7c59f497c23e716a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new num_of_wordsResponse(null);
    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: num_of_wordsRequest,
  Response: num_of_wordsResponse,
  md5sum() { return 'b4834320f090e9235da913886638fb4e'; },
  datatype() { return 'robotics/num_of_words'; }
};
