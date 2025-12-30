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
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'emergency_case.dart' as _i3;
import 'greeting.dart' as _i4;
import 'login_response.dart' as _i5;
import 'medical_history.dart' as _i6;
import 'patient.dart' as _i7;
import 'patient_reponse.dart' as _i8;
import 'prescription.dart' as _i9;
import 'prescription_item.dart' as _i10;
import 'user_list_item.dart' as _i11;
import 'package:backend_server/src/generated/user_list_item.dart' as _i12;
import 'package:backend_server/src/generated/emergency_case.dart' as _i13;
import 'package:backend_server/src/generated/medical_history.dart' as _i14;
import 'package:backend_server/src/generated/prescription.dart' as _i15;
import 'package:backend_server/src/generated/prescription_item.dart' as _i16;
export 'emergency_case.dart';
export 'greeting.dart';
export 'login_response.dart';
export 'medical_history.dart';
export 'patient.dart';
export 'patient_reponse.dart';
export 'prescription.dart';
export 'prescription_item.dart';
export 'user_list_item.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'emergency_case',
      dartName: 'EmergencyCase',
      schema: 'public',
      module: 'backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'emergency_case_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'patientId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'patientName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'age',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'bloodGroup',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'emergencyType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'severity',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'assignedDoctorId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'resolvedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'emergency_case_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'medical_history',
      dartName: 'MedicalHistory',
      schema: 'public',
      module: 'backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'medical_history_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'patientId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'condition',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'diagnosis',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'prescribedMedications',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'visitDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'treatedBy',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'notes',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'medical_history_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'patient',
      dartName: 'Patient',
      schema: 'public',
      module: 'backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'patient_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'patientId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'department',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'session',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'emergencyContact',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'patient_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'prescription',
      dartName: 'Prescription',
      schema: 'public',
      module: 'backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'prescription_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'prescriptionNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'patientId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'doctorId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'date',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'chiefComplaints',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'observations',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'diagnosis',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'advice',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'followUpDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'nextVisit',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'prescription_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'prescription_item',
      dartName: 'PrescriptionItem',
      schema: 'public',
      module: 'backend',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'prescription_item_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'prescriptionId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'medicineName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dosage',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'frequency',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'instructions',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'prescription_item_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

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

    if (t == _i3.EmergencyCase) {
      return _i3.EmergencyCase.fromJson(data) as T;
    }
    if (t == _i4.Greeting) {
      return _i4.Greeting.fromJson(data) as T;
    }
    if (t == _i5.LoginResponse) {
      return _i5.LoginResponse.fromJson(data) as T;
    }
    if (t == _i6.MedicalHistory) {
      return _i6.MedicalHistory.fromJson(data) as T;
    }
    if (t == _i7.Patient) {
      return _i7.Patient.fromJson(data) as T;
    }
    if (t == _i8.PatientProfileDto) {
      return _i8.PatientProfileDto.fromJson(data) as T;
    }
    if (t == _i9.Prescription) {
      return _i9.Prescription.fromJson(data) as T;
    }
    if (t == _i10.PrescriptionItem) {
      return _i10.PrescriptionItem.fromJson(data) as T;
    }
    if (t == _i11.UserListItem) {
      return _i11.UserListItem.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.EmergencyCase?>()) {
      return (data != null ? _i3.EmergencyCase.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Greeting?>()) {
      return (data != null ? _i4.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.LoginResponse?>()) {
      return (data != null ? _i5.LoginResponse.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.MedicalHistory?>()) {
      return (data != null ? _i6.MedicalHistory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Patient?>()) {
      return (data != null ? _i7.Patient.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.PatientProfileDto?>()) {
      return (data != null ? _i8.PatientProfileDto.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Prescription?>()) {
      return (data != null ? _i9.Prescription.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.PrescriptionItem?>()) {
      return (data != null ? _i10.PrescriptionItem.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.UserListItem?>()) {
      return (data != null ? _i11.UserListItem.fromJson(data) : null) as T;
    }
    if (t == List<_i12.UserListItem>) {
      return (data as List)
              .map((e) => deserialize<_i12.UserListItem>(e))
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
    if (t == List<_i13.EmergencyCase>) {
      return (data as List)
              .map((e) => deserialize<_i13.EmergencyCase>(e))
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
    if (t == List<_i14.MedicalHistory>) {
      return (data as List)
              .map((e) => deserialize<_i14.MedicalHistory>(e))
              .toList()
          as T;
    }
    if (t == List<_i15.Prescription>) {
      return (data as List)
              .map((e) => deserialize<_i15.Prescription>(e))
              .toList()
          as T;
    }
    if (t == List<_i16.PrescriptionItem>) {
      return (data as List)
              .map((e) => deserialize<_i16.PrescriptionItem>(e))
              .toList()
          as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i3.EmergencyCase => 'EmergencyCase',
      _i4.Greeting => 'Greeting',
      _i5.LoginResponse => 'LoginResponse',
      _i6.MedicalHistory => 'MedicalHistory',
      _i7.Patient => 'Patient',
      _i8.PatientProfileDto => 'PatientProfileDto',
      _i9.Prescription => 'Prescription',
      _i10.PrescriptionItem => 'PrescriptionItem',
      _i11.UserListItem => 'UserListItem',
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
      case _i3.EmergencyCase():
        return 'EmergencyCase';
      case _i4.Greeting():
        return 'Greeting';
      case _i5.LoginResponse():
        return 'LoginResponse';
      case _i6.MedicalHistory():
        return 'MedicalHistory';
      case _i7.Patient():
        return 'Patient';
      case _i8.PatientProfileDto():
        return 'PatientProfileDto';
      case _i9.Prescription():
        return 'Prescription';
      case _i10.PrescriptionItem():
        return 'PrescriptionItem';
      case _i11.UserListItem():
        return 'UserListItem';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
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
      return deserialize<_i3.EmergencyCase>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i4.Greeting>(data['data']);
    }
    if (dataClassName == 'LoginResponse') {
      return deserialize<_i5.LoginResponse>(data['data']);
    }
    if (dataClassName == 'MedicalHistory') {
      return deserialize<_i6.MedicalHistory>(data['data']);
    }
    if (dataClassName == 'Patient') {
      return deserialize<_i7.Patient>(data['data']);
    }
    if (dataClassName == 'PatientProfileDto') {
      return deserialize<_i8.PatientProfileDto>(data['data']);
    }
    if (dataClassName == 'Prescription') {
      return deserialize<_i9.Prescription>(data['data']);
    }
    if (dataClassName == 'PrescriptionItem') {
      return deserialize<_i10.PrescriptionItem>(data['data']);
    }
    if (dataClassName == 'UserListItem') {
      return deserialize<_i11.UserListItem>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.EmergencyCase:
        return _i3.EmergencyCase.t;
      case _i6.MedicalHistory:
        return _i6.MedicalHistory.t;
      case _i7.Patient:
        return _i7.Patient.t;
      case _i9.Prescription:
        return _i9.Prescription.t;
      case _i10.PrescriptionItem:
        return _i10.PrescriptionItem.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'backend';
}
