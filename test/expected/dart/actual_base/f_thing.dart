// Autogenerated by Frugal Compiler (1.16.0)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

library actual_base.src.f_thing;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:actual_base/actual_base.dart' as t_actual_base;

class thing implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("thing");
  static final TField _AN_ID_FIELD_DESC = new TField("an_id", TType.I32, 1);
  static final TField _A_STRING_FIELD_DESC = new TField("a_string", TType.STRING, 2);

  int _an_id = 0;
  static const int AN_ID = 1;
  String _a_string;
  static const int A_STRING = 2;

  bool __isset_an_id = false;

  thing() {
  }

  int get an_id => this._an_id;

  set an_id(int an_id) {
    this._an_id = an_id;
    this.__isset_an_id = true;
  }

  bool isSetAn_id() => this.__isset_an_id;

  unsetAn_id() {
    this.__isset_an_id = false;
  }

  String get a_string => this._a_string;

  set a_string(String a_string) {
    this._a_string = a_string;
  }

  bool isSetA_string() => this.a_string != null;

  unsetA_string() {
    this.a_string = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case AN_ID:
        return this.an_id;
      case A_STRING:
        return this.a_string;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case AN_ID:
        if(value == null) {
          unsetAn_id();
        } else {
          this.an_id = value;
        }
        break;

      case A_STRING:
        if(value == null) {
          unsetA_string();
        } else {
          this.a_string = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case AN_ID:
        return isSetAn_id();
      case A_STRING:
        return isSetA_string();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case AN_ID:
          if(field.type == TType.I32) {
            an_id = iprot.readI32();
            this.__isset_an_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case A_STRING:
          if(field.type == TType.STRING) {
            a_string = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_AN_ID_FIELD_DESC);
    oprot.writeI32(an_id);
    oprot.writeFieldEnd();
    if(this.a_string != null) {
      oprot.writeFieldBegin(_A_STRING_FIELD_DESC);
      oprot.writeString(a_string);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("thing(");

    ret.write("an_id:");
    ret.write(this.an_id);

    ret.write(", ");
    ret.write("a_string:");
    if(this.a_string == null) {
      ret.write("null");
    } else {
      ret.write(this.a_string);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
