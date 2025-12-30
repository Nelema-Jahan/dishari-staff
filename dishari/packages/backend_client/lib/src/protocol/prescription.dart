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

abstract class Prescription implements _i1.SerializableModel {
  Prescription._({
    this.id,
    required this.prescriptionNumber,
    required this.patientId,
    required this.doctorId,
    required this.date,
    this.chiefComplaints,
    this.observations,
    this.diagnosis,
    this.advice,
    this.followUpDate,
    this.nextVisit,
  });

  factory Prescription({
    int? id,
    required String prescriptionNumber,
    required int patientId,
    required int doctorId,
    required DateTime date,
    String? chiefComplaints,
    String? observations,
    String? diagnosis,
    String? advice,
    DateTime? followUpDate,
    DateTime? nextVisit,
  }) = _PrescriptionImpl;

  factory Prescription.fromJson(Map<String, dynamic> jsonSerialization) {
    return Prescription(
      id: jsonSerialization['id'] as int?,
      prescriptionNumber: jsonSerialization['prescriptionNumber'] as String,
      patientId: jsonSerialization['patientId'] as int,
      doctorId: jsonSerialization['doctorId'] as int,
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      chiefComplaints: jsonSerialization['chiefComplaints'] as String?,
      observations: jsonSerialization['observations'] as String?,
      diagnosis: jsonSerialization['diagnosis'] as String?,
      advice: jsonSerialization['advice'] as String?,
      followUpDate: jsonSerialization['followUpDate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['followUpDate'],
            ),
      nextVisit: jsonSerialization['nextVisit'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['nextVisit']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String prescriptionNumber;

  int patientId;

  int doctorId;

  DateTime date;

  String? chiefComplaints;

  String? observations;

  String? diagnosis;

  String? advice;

  DateTime? followUpDate;

  DateTime? nextVisit;

  /// Returns a shallow copy of this [Prescription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Prescription copyWith({
    int? id,
    String? prescriptionNumber,
    int? patientId,
    int? doctorId,
    DateTime? date,
    String? chiefComplaints,
    String? observations,
    String? diagnosis,
    String? advice,
    DateTime? followUpDate,
    DateTime? nextVisit,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Prescription',
      if (id != null) 'id': id,
      'prescriptionNumber': prescriptionNumber,
      'patientId': patientId,
      'doctorId': doctorId,
      'date': date.toJson(),
      if (chiefComplaints != null) 'chiefComplaints': chiefComplaints,
      if (observations != null) 'observations': observations,
      if (diagnosis != null) 'diagnosis': diagnosis,
      if (advice != null) 'advice': advice,
      if (followUpDate != null) 'followUpDate': followUpDate?.toJson(),
      if (nextVisit != null) 'nextVisit': nextVisit?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrescriptionImpl extends Prescription {
  _PrescriptionImpl({
    int? id,
    required String prescriptionNumber,
    required int patientId,
    required int doctorId,
    required DateTime date,
    String? chiefComplaints,
    String? observations,
    String? diagnosis,
    String? advice,
    DateTime? followUpDate,
    DateTime? nextVisit,
  }) : super._(
         id: id,
         prescriptionNumber: prescriptionNumber,
         patientId: patientId,
         doctorId: doctorId,
         date: date,
         chiefComplaints: chiefComplaints,
         observations: observations,
         diagnosis: diagnosis,
         advice: advice,
         followUpDate: followUpDate,
         nextVisit: nextVisit,
       );

  /// Returns a shallow copy of this [Prescription]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Prescription copyWith({
    Object? id = _Undefined,
    String? prescriptionNumber,
    int? patientId,
    int? doctorId,
    DateTime? date,
    Object? chiefComplaints = _Undefined,
    Object? observations = _Undefined,
    Object? diagnosis = _Undefined,
    Object? advice = _Undefined,
    Object? followUpDate = _Undefined,
    Object? nextVisit = _Undefined,
  }) {
    return Prescription(
      id: id is int? ? id : this.id,
      prescriptionNumber: prescriptionNumber ?? this.prescriptionNumber,
      patientId: patientId ?? this.patientId,
      doctorId: doctorId ?? this.doctorId,
      date: date ?? this.date,
      chiefComplaints: chiefComplaints is String?
          ? chiefComplaints
          : this.chiefComplaints,
      observations: observations is String? ? observations : this.observations,
      diagnosis: diagnosis is String? ? diagnosis : this.diagnosis,
      advice: advice is String? ? advice : this.advice,
      followUpDate: followUpDate is DateTime?
          ? followUpDate
          : this.followUpDate,
      nextVisit: nextVisit is DateTime? ? nextVisit : this.nextVisit,
    );
  }
}
