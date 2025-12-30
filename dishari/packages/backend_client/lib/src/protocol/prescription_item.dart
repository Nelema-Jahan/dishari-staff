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

abstract class PrescriptionItem implements _i1.SerializableModel {
  PrescriptionItem._({
    this.id,
    required this.prescriptionId,
    required this.medicineName,
    required this.dosage,
    this.duration,
    this.frequency,
    this.instructions,
  });

  factory PrescriptionItem({
    int? id,
    required int prescriptionId,
    required String medicineName,
    required String dosage,
    String? duration,
    String? frequency,
    String? instructions,
  }) = _PrescriptionItemImpl;

  factory PrescriptionItem.fromJson(Map<String, dynamic> jsonSerialization) {
    return PrescriptionItem(
      id: jsonSerialization['id'] as int?,
      prescriptionId: jsonSerialization['prescriptionId'] as int,
      medicineName: jsonSerialization['medicineName'] as String,
      dosage: jsonSerialization['dosage'] as String,
      duration: jsonSerialization['duration'] as String?,
      frequency: jsonSerialization['frequency'] as String?,
      instructions: jsonSerialization['instructions'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int prescriptionId;

  String medicineName;

  String dosage;

  String? duration;

  String? frequency;

  String? instructions;

  /// Returns a shallow copy of this [PrescriptionItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PrescriptionItem copyWith({
    int? id,
    int? prescriptionId,
    String? medicineName,
    String? dosage,
    String? duration,
    String? frequency,
    String? instructions,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PrescriptionItem',
      if (id != null) 'id': id,
      'prescriptionId': prescriptionId,
      'medicineName': medicineName,
      'dosage': dosage,
      if (duration != null) 'duration': duration,
      if (frequency != null) 'frequency': frequency,
      if (instructions != null) 'instructions': instructions,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PrescriptionItemImpl extends PrescriptionItem {
  _PrescriptionItemImpl({
    int? id,
    required int prescriptionId,
    required String medicineName,
    required String dosage,
    String? duration,
    String? frequency,
    String? instructions,
  }) : super._(
         id: id,
         prescriptionId: prescriptionId,
         medicineName: medicineName,
         dosage: dosage,
         duration: duration,
         frequency: frequency,
         instructions: instructions,
       );

  /// Returns a shallow copy of this [PrescriptionItem]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PrescriptionItem copyWith({
    Object? id = _Undefined,
    int? prescriptionId,
    String? medicineName,
    String? dosage,
    Object? duration = _Undefined,
    Object? frequency = _Undefined,
    Object? instructions = _Undefined,
  }) {
    return PrescriptionItem(
      id: id is int? ? id : this.id,
      prescriptionId: prescriptionId ?? this.prescriptionId,
      medicineName: medicineName ?? this.medicineName,
      dosage: dosage ?? this.dosage,
      duration: duration is String? ? duration : this.duration,
      frequency: frequency is String? ? frequency : this.frequency,
      instructions: instructions is String? ? instructions : this.instructions,
    );
  }
}
