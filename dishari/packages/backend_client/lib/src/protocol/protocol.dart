/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'emergency_case.dart' as _i2;
import 'greeting.dart' as _i3;
import 'login_response.dart' as _i4;
import 'medical_history.dart' as _i5;
import 'patient.dart' as _i6;
import 'patient_reponse.dart' as _i7;
import 'prescription.dart' as _i8;
import 'prescription_item.dart' as _i9;
import 'user_list_item.dart' as _i10;
import 'package:backend_client/src/protocol/user_list_item.dart' as _i11;
import 'package:backend_client/src/protocol/emergency_case.dart' as _i12;
import 'package:backend_client/src/protocol/medical_history.dart' as _i13;
import 'package:backend_client/src/protocol/prescription.dart' as _i14;
import 'package:backend_client/src/protocol/prescription_item.dart' as _i15;
export 'emergency_case.dart';
export 'greeting.dart';
export 'login_response.dart';
export 'medical_history.dart';
export 'patient.dart';
export 'patient_reponse.dart';
export 'prescription.dart';
export 'prescription_item.dart';
export 'user_list_item.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.EmergencyCase) {
      return _i2.EmergencyCase.fromJson(data) as T;
    }
    if (t == _i3.Greeting) {
      return _i3.Greeting.fromJson(data) as T;
    }
    if (t == _i4.LoginResponse) {
      return _i4.LoginResponse.fromJson(data) as T;
    }
    if (t == _i5.MedicalHistory) {
      return _i5.MedicalHistory.fromJson(data) as T;
    }
    if (t == _i6.Patient) {
      return _i6.Patient.fromJson(data) as T;
    }
    if (t == _i7.PatientProfileDto) {
      return _i7.PatientProfileDto.fromJson(data) as T;
    }
    if (t == _i8.Prescription) {
      return _i8.Prescription.fromJson(data) as T;
    }
    if (t == _i9.PrescriptionItem) {
      return _i9.PrescriptionItem.fromJson(data) as T;
    }
    if (t == _i10.UserListItem) {
      return _i10.UserListItem.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.EmergencyCase?>()) {
      return (data != null ? _i2.EmergencyCase.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Greeting?>()) {
      return (data != null ? _i3.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.LoginResponse?>()) {
      return (data != null ? _i4.LoginResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.MedicalHistory?>()) {
      return (data != null ? _i5.MedicalHistory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Patient?>()) {
      return (data != null ? _i6.Patient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.PatientProfileDto?>()) {
      return (data != null ? _i7.PatientProfileDto.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.Prescription?>()) {
      return (data != null ? _i8.Prescription.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.PrescriptionItem?>()) {
      return (data != null ? _i9.PrescriptionItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.UserListItem?>()) {
      return (data != null ? _i10.UserListItem.fromJson(data) : null) as T;
    }
    if (t == List<_i11.UserListItem>) {
      return (data as List)
              .map((e) => deserialize<_i11.UserListItem>(e))
              .toList()
          as T;
    }
    if (t == List<Map<String, dynamic>>) {
      return (data as List)
              .map((e) => deserialize<Map<String, dynamic>>(e))
              .toList()
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == List<_i12.EmergencyCase>) {
      return (data as List)
              .map((e) => deserialize<_i12.EmergencyCase>(e))
              .toList()
          as T;
    }
    if (t == _i1.getType<Map<String, dynamic>?>()) {
      return (data != null
              ? (data as Map).map(
                  (k, v) =>
                      MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
                )
              : null)
          as T;
    }
    if (t == List<_i13.MedicalHistory>) {
      return (data as List)
              .map((e) => deserialize<_i13.MedicalHistory>(e))
              .toList()
          as T;
    }
    if (t == List<_i14.Prescription>) {
      return (data as List)
              .map((e) => deserialize<_i14.Prescription>(e))
              .toList()
          as T;
    }
    if (t == List<_i15.PrescriptionItem>) {
      return (data as List)
              .map((e) => deserialize<_i15.PrescriptionItem>(e))
              .toList()
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.EmergencyCase => 'EmergencyCase',
      _i3.Greeting => 'Greeting',
      _i4.LoginResponse => 'LoginResponse',
      _i5.MedicalHistory => 'MedicalHistory',
      _i6.Patient => 'Patient',
      _i7.PatientProfileDto => 'PatientProfileDto',
      _i8.Prescription => 'Prescription',
      _i9.PrescriptionItem => 'PrescriptionItem',
      _i10.UserListItem => 'UserListItem',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('backend.', '');
    }

    switch (data) {
      case _i2.EmergencyCase():
        return 'EmergencyCase';
      case _i3.Greeting():
        return 'Greeting';
      case _i4.LoginResponse():
        return 'LoginResponse';
      case _i5.MedicalHistory():
        return 'MedicalHistory';
      case _i6.Patient():
        return 'Patient';
      case _i7.PatientProfileDto():
        return 'PatientProfileDto';
      case _i8.Prescription():
        return 'Prescription';
      case _i9.PrescriptionItem():
        return 'PrescriptionItem';
      case _i10.UserListItem():
        return 'UserListItem';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'EmergencyCase') {
      return deserialize<_i2.EmergencyCase>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i3.Greeting>(data['data']);
    }
    if (dataClassName == 'LoginResponse') {
      return deserialize<_i4.LoginResponse>(data['data']);
    }
    if (dataClassName == 'MedicalHistory') {
      return deserialize<_i5.MedicalHistory>(data['data']);
    }
    if (dataClassName == 'Patient') {
      return deserialize<_i6.Patient>(data['data']);
    }
    if (dataClassName == 'PatientProfileDto') {
      return deserialize<_i7.PatientProfileDto>(data['data']);
    }
    if (dataClassName == 'Prescription') {
      return deserialize<_i8.Prescription>(data['data']);
    }
    if (dataClassName == 'PrescriptionItem') {
      return deserialize<_i9.PrescriptionItem>(data['data']);
    }
    if (dataClassName == 'UserListItem') {
      return deserialize<_i10.UserListItem>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
