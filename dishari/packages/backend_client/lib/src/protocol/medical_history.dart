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

abstract class MedicalHistory implements _i1.SerializableModel {
  MedicalHistory._({
    this.id,
    required this.patientId,
    required this.condition,
    required this.diagnosis,
    required this.prescribedMedications,
    required this.visitDate,
    this.treatedBy,
    this.notes,
  });

  factory MedicalHistory({
    int? id,
    required int patientId,
    required String condition,
    required String diagnosis,
    required String prescribedMedications,
    required DateTime visitDate,
    int? treatedBy,
    String? notes,
  }) = _MedicalHistoryImpl;

  factory MedicalHistory.fromJson(Map<String, dynamic> jsonSerialization) {
    return MedicalHistory(
      id: jsonSerialization['id'] as int?,
      patientId: jsonSerialization['patientId'] as int,
      condition: jsonSerialization['condition'] as String,
      diagnosis: jsonSerialization['diagnosis'] as String,
      prescribedMedications:
          jsonSerialization['prescribedMedications'] as String,
      visitDate: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['visitDate'],
      ),
      treatedBy: jsonSerialization['treatedBy'] as int?,
      notes: jsonSerialization['notes'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int patientId;

  String condition;

  String diagnosis;

  String prescribedMedications;

  DateTime visitDate;

  int? treatedBy;

  String? notes;

  /// Returns a shallow copy of this [MedicalHistory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MedicalHistory copyWith({
    int? id,
    int? patientId,
    String? condition,
    String? diagnosis,
    String? prescribedMedications,
    DateTime? visitDate,
    int? treatedBy,
    String? notes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'MedicalHistory',
      if (id != null) 'id': id,
      'patientId': patientId,
      'condition': condition,
      'diagnosis': diagnosis,
      'prescribedMedications': prescribedMedications,
      'visitDate': visitDate.toJson(),
      if (treatedBy != null) 'treatedBy': treatedBy,
      if (notes != null) 'notes': notes,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MedicalHistoryImpl extends MedicalHistory {
  _MedicalHistoryImpl({
    int? id,
    required int patientId,
    required String condition,
    required String diagnosis,
    required String prescribedMedications,
    required DateTime visitDate,
    int? treatedBy,
    String? notes,
  }) : super._(
         id: id,
         patientId: patientId,
         condition: condition,
         diagnosis: diagnosis,
         prescribedMedications: prescribedMedications,
         visitDate: visitDate,
         treatedBy: treatedBy,
         notes: notes,
       );

  /// Returns a shallow copy of this [MedicalHistory]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MedicalHistory copyWith({
    Object? id = _Undefined,
    int? patientId,
    String? condition,
    String? diagnosis,
    String? prescribedMedications,
    DateTime? visitDate,
    Object? treatedBy = _Undefined,
    Object? notes = _Undefined,
  }) {
    return MedicalHistory(
      id: id is int? ? id : this.id,
      patientId: patientId ?? this.patientId,
      condition: condition ?? this.condition,
      diagnosis: diagnosis ?? this.diagnosis,
      prescribedMedications:
          prescribedMedications ?? this.prescribedMedications,
      visitDate: visitDate ?? this.visitDate,
      treatedBy: treatedBy is int? ? treatedBy : this.treatedBy,
      notes: notes is String? ? notes : this.notes,
    );
  }
}
