// Auto-generated. Do not edit!

// (in-package robotics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class comp_num {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.real = null;
      this.imaginary = null;
    }
    else {
      if (initObj.hasOwnProperty('real')) {
        this.real = initObj.real
      }
      else {
        this.real = 0;
      }
      if (initObj.hasOwnProperty('imaginary')) {
        this.imaginary = initObj.imaginary
      }
      else {
        this.imaginary = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type comp_num
    // Serialize message field [real]
    bufferOffset = _serializer.int32(obj.real, buffer, bufferOffset);
    // Serialize message field [imaginary]
    bufferOffset = _serializer.int32(obj.imaginary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type comp_num
    let len;
    let data = new comp_num(null);
    // Deserialize message field [real]
    data.real = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [imaginary]
    data.imaginary = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotics/comp_num';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29494601c99dbe58165af75a7e636359';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 real
    int32 imaginary
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new comp_num(null);
    if (msg.real !== undefined) {
      resolved.real = msg.real;
    }
    else {
      resolved.real = 0
    }

    if (msg.imaginary !== undefined) {
      resolved.imaginary = msg.imaginary;
    }
    else {
      resolved.imaginary = 0
    }

    return resolved;
    }
};

module.exports = comp_num;
