// Auto-generated. Do not edit!

// (in-package smartcar_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DriversInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_left_vel = null;
      this.front_right_vel = null;
      this.rear_left_vel = null;
      this.rear_right_vel = null;
      this.front_left_angle = null;
      this.front_right_angle = null;
      this.rear_left_angle = null;
      this.rear_right_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('front_left_vel')) {
        this.front_left_vel = initObj.front_left_vel
      }
      else {
        this.front_left_vel = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_vel')) {
        this.front_right_vel = initObj.front_right_vel
      }
      else {
        this.front_right_vel = 0.0;
      }
      if (initObj.hasOwnProperty('rear_left_vel')) {
        this.rear_left_vel = initObj.rear_left_vel
      }
      else {
        this.rear_left_vel = 0.0;
      }
      if (initObj.hasOwnProperty('rear_right_vel')) {
        this.rear_right_vel = initObj.rear_right_vel
      }
      else {
        this.rear_right_vel = 0.0;
      }
      if (initObj.hasOwnProperty('front_left_angle')) {
        this.front_left_angle = initObj.front_left_angle
      }
      else {
        this.front_left_angle = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_angle')) {
        this.front_right_angle = initObj.front_right_angle
      }
      else {
        this.front_right_angle = 0.0;
      }
      if (initObj.hasOwnProperty('rear_left_angle')) {
        this.rear_left_angle = initObj.rear_left_angle
      }
      else {
        this.rear_left_angle = 0.0;
      }
      if (initObj.hasOwnProperty('rear_right_angle')) {
        this.rear_right_angle = initObj.rear_right_angle
      }
      else {
        this.rear_right_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriversInput
    // Serialize message field [front_left_vel]
    bufferOffset = _serializer.float32(obj.front_left_vel, buffer, bufferOffset);
    // Serialize message field [front_right_vel]
    bufferOffset = _serializer.float32(obj.front_right_vel, buffer, bufferOffset);
    // Serialize message field [rear_left_vel]
    bufferOffset = _serializer.float32(obj.rear_left_vel, buffer, bufferOffset);
    // Serialize message field [rear_right_vel]
    bufferOffset = _serializer.float32(obj.rear_right_vel, buffer, bufferOffset);
    // Serialize message field [front_left_angle]
    bufferOffset = _serializer.float32(obj.front_left_angle, buffer, bufferOffset);
    // Serialize message field [front_right_angle]
    bufferOffset = _serializer.float32(obj.front_right_angle, buffer, bufferOffset);
    // Serialize message field [rear_left_angle]
    bufferOffset = _serializer.float32(obj.rear_left_angle, buffer, bufferOffset);
    // Serialize message field [rear_right_angle]
    bufferOffset = _serializer.float32(obj.rear_right_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriversInput
    let len;
    let data = new DriversInput(null);
    // Deserialize message field [front_left_vel]
    data.front_left_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right_vel]
    data.front_right_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_left_vel]
    data.rear_left_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_right_vel]
    data.rear_right_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_left_angle]
    data.front_left_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right_angle]
    data.front_right_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_left_angle]
    data.rear_left_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_right_angle]
    data.rear_right_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'smartcar_control/DriversInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0abe91c43e477d202ad7b132d7fe2c7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 front_left_vel
    float32 front_right_vel
    float32 rear_left_vel
    float32 rear_right_vel
    float32 front_left_angle
    float32 front_right_angle
    float32 rear_left_angle
    float32 rear_right_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriversInput(null);
    if (msg.front_left_vel !== undefined) {
      resolved.front_left_vel = msg.front_left_vel;
    }
    else {
      resolved.front_left_vel = 0.0
    }

    if (msg.front_right_vel !== undefined) {
      resolved.front_right_vel = msg.front_right_vel;
    }
    else {
      resolved.front_right_vel = 0.0
    }

    if (msg.rear_left_vel !== undefined) {
      resolved.rear_left_vel = msg.rear_left_vel;
    }
    else {
      resolved.rear_left_vel = 0.0
    }

    if (msg.rear_right_vel !== undefined) {
      resolved.rear_right_vel = msg.rear_right_vel;
    }
    else {
      resolved.rear_right_vel = 0.0
    }

    if (msg.front_left_angle !== undefined) {
      resolved.front_left_angle = msg.front_left_angle;
    }
    else {
      resolved.front_left_angle = 0.0
    }

    if (msg.front_right_angle !== undefined) {
      resolved.front_right_angle = msg.front_right_angle;
    }
    else {
      resolved.front_right_angle = 0.0
    }

    if (msg.rear_left_angle !== undefined) {
      resolved.rear_left_angle = msg.rear_left_angle;
    }
    else {
      resolved.rear_left_angle = 0.0
    }

    if (msg.rear_right_angle !== undefined) {
      resolved.rear_right_angle = msg.rear_right_angle;
    }
    else {
      resolved.rear_right_angle = 0.0
    }

    return resolved;
    }
};

module.exports = DriversInput;
