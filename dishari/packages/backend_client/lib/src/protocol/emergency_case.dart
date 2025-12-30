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

abstract class EmergencyCase implements _i1.SerializableModel {
  EmergencyCase._({
    this.id,
    this.patientId,
    this.patientName,
    this.age,
    this.gender,
    this.phoneNumber,
    this.bloodGroup,
    required this.emergencyType,
    required this.severity,
    this.assignedDoctorId,
    required this.status,
    required this.createdAt,
    this.resolvedAt,
  });

  factory EmergencyCase({
    int? id,
    int? patientId,
    String? patientName,
    int? age,
    String? gender,
    String? phoneNumber,
    String? bloodGroup,
    required String emergencyType,
    required String severity,
    int? assignedDoctorId,
    required String status,
    required DateTime createdAt,
    DateTime? resolvedAt,
  }) = _EmergencyCaseImpl;

  factory EmergencyCase.fromJson(Map<String, dynamic> jsonSerialization) {
    return EmergencyCase(
      id: jsonSerialization['id'] as int?,
      patientId: jsonSerialization['patientId'] as int?,
      patientName: jsonSerialization['patientName'] as String?,
      age: jsonSerialization['age'] as int?,
      gender: jsonSerialization['gender'] as String?,
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      bloodGroup: jsonSerialization['bloodGroup'] as String?,
      emergencyType: jsonSerialization['emergencyType'] as String,
      severity: jsonSerialization['severity'] as String,
      assignedDoctorId: jsonSerialization['assignedDoctorId'] as int?,
      status: jsonSerialization['status'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      resolvedAt: jsonSerialization['resolvedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['resolvedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? patientId;

  String? patientName;

  int? age;

  String? gender;

  String? phoneNumber;

  String? bloodGroup;

  String emergencyType;

  String severity;

  int? assignedDoctorId;

  String status;

  DateTime createdAt;

  DateTime? resolvedAt;

  /// Returns a shallow copy of this [EmergencyCase]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  EmergencyCase copyWith({
    int? id,
    int? patientId,
    String? patientName,
    int? age,
    String? gender,
    String? phoneNumber,
    String? bloodGroup,
    String? emergencyType,
    String? severity,
    int? assignedDoctorId,
    String? status,
    DateTime? createdAt,
    DateTime? resolvedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'EmergencyCase',
      if (id != null) 'id': id,
      if (patientId != null) 'patientId': patientId,
      if (patientName != null) 'patientName': patientName,
      if (age != null) 'age': age,
      if (gender != null) 'gender': gender,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (bloodGroup != null) 'bloodGroup': bloodGroup,
      'emergencyType': emergencyType,
      'severity': severity,
      if (assignedDoctorId != null) 'assignedDoctorId': assignedDoctorId,
      'status': status,
      'createdAt': createdAt.toJson(),
      if (resolvedAt != null) 'resolvedAt': resolvedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EmergencyCaseImpl extends EmergencyCase {
  _EmergencyCaseImpl({
    int? id,
    int? patientId,
    String? patientName,
    int? age,
    String? gender,
    String? phoneNumber,
    String? bloodGroup,
    required String emergencyType,
    required String severity,
    int? assignedDoctorId,
    required String status,
    required DateTime createdAt,
    DateTime? resolvedAt,
  }) : super._(
         id: id,
         patientId: patientId,
         patientName: patientName,
         age: age,
         gender: gender,
         phoneNumber: phoneNumber,
         bloodGroup: bloodGroup,
         emergencyType: emergencyType,
         severity: severity,
         assignedDoctorId: assignedDoctorId,
         status: status,
         createdAt: createdAt,
         resolvedAt: resolvedAt,
       );

  /// Returns a shallow copy of this [EmergencyCase]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  EmergencyCase copyWith({
    Object? id = _Undefined,
    Object? patientId = _Undefined,
    Object? patientName = _Undefined,
    Object? age = _Undefined,
    Object? gender = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? bloodGroup = _Undefined,
    String? emergencyType,
    String? severity,
    Object? assignedDoctorId = _Undefined,
    String? status,
    DateTime? createdAt,
    Object? resolvedAt = _Undefined,
  }) {
    return EmergencyCase(
      id: id is int? ? id : this.id,
      patientId: patientId is int? ? patientId : this.patientId,
      patientName: patientName is String? ? patientName : this.patientName,
      age: age is int? ? age : this.age,
      gender: gender is String? ? gender : this.gender,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      bloodGroup: bloodGroup is String? ? bloodGroup : this.bloodGroup,
      emergencyType: emergencyType ?? this.emergencyType,
      severity: severity ?? this.severity,
      assignedDoctorId: assignedDoctorId is int?
          ? assignedDoctorId
          : this.assignedDoctorId,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      resolvedAt: resolvedAt is DateTime? ? resolvedAt : this.resolvedAt,
    );
  }
}
