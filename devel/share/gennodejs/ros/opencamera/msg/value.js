// Auto-generated. Do not edit!

// (in-package opencamera.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class value {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hue_max = null;
      this.hue_min = null;
      this.saturation_max = null;
      this.saturation_min = null;
      this.value_max = null;
      this.value_min = null;
    }
    else {
      if (initObj.hasOwnProperty('hue_max')) {
        this.hue_max = initObj.hue_max
      }
      else {
        this.hue_max = 0;
      }
      if (initObj.hasOwnProperty('hue_min')) {
        this.hue_min = initObj.hue_min
      }
      else {
        this.hue_min = 0;
      }
      if (initObj.hasOwnProperty('saturation_max')) {
        this.saturation_max = initObj.saturation_max
      }
      else {
        this.saturation_max = 0;
      }
      if (initObj.hasOwnProperty('saturation_min')) {
        this.saturation_min = initObj.saturation_min
      }
      else {
        this.saturation_min = 0;
      }
      if (initObj.hasOwnProperty('value_max')) {
        this.value_max = initObj.value_max
      }
      else {
        this.value_max = 0;
      }
      if (initObj.hasOwnProperty('value_min')) {
        this.value_min = initObj.value_min
      }
      else {
        this.value_min = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type value
    // Serialize message field [hue_max]
    bufferOffset = _serializer.int32(obj.hue_max, buffer, bufferOffset);
    // Serialize message field [hue_min]
    bufferOffset = _serializer.int32(obj.hue_min, buffer, bufferOffset);
    // Serialize message field [saturation_max]
    bufferOffset = _serializer.int32(obj.saturation_max, buffer, bufferOffset);
    // Serialize message field [saturation_min]
    bufferOffset = _serializer.int32(obj.saturation_min, buffer, bufferOffset);
    // Serialize message field [value_max]
    bufferOffset = _serializer.int32(obj.value_max, buffer, bufferOffset);
    // Serialize message field [value_min]
    bufferOffset = _serializer.int32(obj.value_min, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type value
    let len;
    let data = new value(null);
    // Deserialize message field [hue_max]
    data.hue_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hue_min]
    data.hue_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [saturation_max]
    data.saturation_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [saturation_min]
    data.saturation_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value_max]
    data.value_max = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value_min]
    data.value_min = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opencamera/value';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7de79ccfc65fcdf3851b36608861350';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 hue_max
    int32 hue_min
    int32 saturation_max
    int32 saturation_min
    int32 value_max
    int32 value_min                                                 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new value(null);
    if (msg.hue_max !== undefined) {
      resolved.hue_max = msg.hue_max;
    }
    else {
      resolved.hue_max = 0
    }

    if (msg.hue_min !== undefined) {
      resolved.hue_min = msg.hue_min;
    }
    else {
      resolved.hue_min = 0
    }

    if (msg.saturation_max !== undefined) {
      resolved.saturation_max = msg.saturation_max;
    }
    else {
      resolved.saturation_max = 0
    }

    if (msg.saturation_min !== undefined) {
      resolved.saturation_min = msg.saturation_min;
    }
    else {
      resolved.saturation_min = 0
    }

    if (msg.value_max !== undefined) {
      resolved.value_max = msg.value_max;
    }
    else {
      resolved.value_max = 0
    }

    if (msg.value_min !== undefined) {
      resolved.value_min = msg.value_min;
    }
    else {
      resolved.value_min = 0
    }

    return resolved;
    }
};

module.exports = value;
