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

abstract class Patient implements _i1.SerializableModel {
  Patient._({
    this.id,
    this.userId,
    required this.patientId,
    required this.department,
    required this.session,
    this.emergencyContact,
    required this.createdAt,
  });

  factory Patient({
    int? id,
    int? userId,
    required String patientId,
    required String department,
    required String session,
    String? emergencyContact,
    required DateTime createdAt,
  }) = _PatientImpl;

  factory Patient.fromJson(Map<String, dynamic> jsonSerialization) {
    return Patient(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      patientId: jsonSerialization['patientId'] as String,
      department: jsonSerialization['department'] as String,
      session: jsonSerialization['session'] as String,
      emergencyContact: jsonSerialization['emergencyContact'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  String patientId;

  String department;

  String session;

  String? emergencyContact;

  DateTime createdAt;

  /// Returns a shallow copy of this [Patient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Patient copyWith({
    int? id,
    int? userId,
    String? patientId,
    String? department,
    String? session,
    String? emergencyContact,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Patient',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'patientId': patientId,
      'department': department,
      'session': session,
      if (emergencyContact != null) 'emergencyContact': emergencyContact,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PatientImpl extends Patient {
  _PatientImpl({
    int? id,
    int? userId,
    required String patientId,
    required String department,
    required String session,
    String? emergencyContact,
    required DateTime createdAt,
  }) : super._(
         id: id,
         userId: userId,
         patientId: patientId,
         department: department,
         session: session,
         emergencyContact: emergencyContact,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Patient]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Patient copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    String? patientId,
    String? department,
    String? session,
    Object? emergencyContact = _Undefined,
    DateTime? createdAt,
  }) {
    return Patient(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      patientId: patientId ?? this.patientId,
      department: department ?? this.department,
      session: session ?? this.session,
      emergencyContact: emergencyContact is String?
          ? emergencyContact
          : this.emergencyContact,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
