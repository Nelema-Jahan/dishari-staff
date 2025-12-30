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

abstract class EmergencyCase
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = EmergencyCaseTable();

  static const db = EmergencyCaseRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static EmergencyCaseInclude include() {
    return EmergencyCaseInclude._();
  }

  static EmergencyCaseIncludeList includeList({
    _i1.WhereExpressionBuilder<EmergencyCaseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmergencyCaseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmergencyCaseTable>? orderByList,
    EmergencyCaseInclude? include,
  }) {
    return EmergencyCaseIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EmergencyCase.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(EmergencyCase.t),
      include: include,
    );
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

class EmergencyCaseUpdateTable extends _i1.UpdateTable<EmergencyCaseTable> {
  EmergencyCaseUpdateTable(super.table);

  _i1.ColumnValue<int, int> patientId(int? value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<String, String> patientName(String? value) => _i1.ColumnValue(
    table.patientName,
    value,
  );

  _i1.ColumnValue<int, int> age(int? value) => _i1.ColumnValue(
    table.age,
    value,
  );

  _i1.ColumnValue<String, String> gender(String? value) => _i1.ColumnValue(
    table.gender,
    value,
  );

  _i1.ColumnValue<String, String> phoneNumber(String? value) => _i1.ColumnValue(
    table.phoneNumber,
    value,
  );

  _i1.ColumnValue<String, String> bloodGroup(String? value) => _i1.ColumnValue(
    table.bloodGroup,
    value,
  );

  _i1.ColumnValue<String, String> emergencyType(String value) =>
      _i1.ColumnValue(
        table.emergencyType,
        value,
      );

  _i1.ColumnValue<String, String> severity(String value) => _i1.ColumnValue(
    table.severity,
    value,
  );

  _i1.ColumnValue<int, int> assignedDoctorId(int? value) => _i1.ColumnValue(
    table.assignedDoctorId,
    value,
  );

  _i1.ColumnValue<String, String> status(String value) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> resolvedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.resolvedAt,
        value,
      );
}

class EmergencyCaseTable extends _i1.Table<int?> {
  EmergencyCaseTable({super.tableRelation})
    : super(tableName: 'emergency_case') {
    updateTable = EmergencyCaseUpdateTable(this);
    patientId = _i1.ColumnInt(
      'patientId',
      this,
    );
    patientName = _i1.ColumnString(
      'patientName',
      this,
    );
    age = _i1.ColumnInt(
      'age',
      this,
    );
    gender = _i1.ColumnString(
      'gender',
      this,
    );
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    bloodGroup = _i1.ColumnString(
      'bloodGroup',
      this,
    );
    emergencyType = _i1.ColumnString(
      'emergencyType',
      this,
    );
    severity = _i1.ColumnString(
      'severity',
      this,
    );
    assignedDoctorId = _i1.ColumnInt(
      'assignedDoctorId',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    resolvedAt = _i1.ColumnDateTime(
      'resolvedAt',
      this,
    );
  }

  late final EmergencyCaseUpdateTable updateTable;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnString patientName;

  late final _i1.ColumnInt age;

  late final _i1.ColumnString gender;

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString bloodGroup;

  late final _i1.ColumnString emergencyType;

  late final _i1.ColumnString severity;

  late final _i1.ColumnInt assignedDoctorId;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime resolvedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    patientId,
    patientName,
    age,
    gender,
    phoneNumber,
    bloodGroup,
    emergencyType,
    severity,
    assignedDoctorId,
    status,
    createdAt,
    resolvedAt,
  ];
}

class EmergencyCaseInclude extends _i1.IncludeObject {
  EmergencyCaseInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => EmergencyCase.t;
}

class EmergencyCaseIncludeList extends _i1.IncludeList {
  EmergencyCaseIncludeList._({
    _i1.WhereExpressionBuilder<EmergencyCaseTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(EmergencyCase.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => EmergencyCase.t;
}

class EmergencyCaseRepository {
  const EmergencyCaseRepository._();

  /// Returns a list of [EmergencyCase]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<EmergencyCase>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmergencyCaseTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmergencyCaseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmergencyCaseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<EmergencyCase>(
      where: where?.call(EmergencyCase.t),
      orderBy: orderBy?.call(EmergencyCase.t),
      orderByList: orderByList?.call(EmergencyCase.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [EmergencyCase] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<EmergencyCase?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmergencyCaseTable>? where,
    int? offset,
    _i1.OrderByBuilder<EmergencyCaseTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmergencyCaseTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<EmergencyCase>(
      where: where?.call(EmergencyCase.t),
      orderBy: orderBy?.call(EmergencyCase.t),
      orderByList: orderByList?.call(EmergencyCase.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [EmergencyCase] by its [id] or null if no such row exists.
  Future<EmergencyCase?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<EmergencyCase>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [EmergencyCase]s in the list and returns the inserted rows.
  ///
  /// The returned [EmergencyCase]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<EmergencyCase>> insert(
    _i1.Session session,
    List<EmergencyCase> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<EmergencyCase>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [EmergencyCase] and returns the inserted row.
  ///
  /// The returned [EmergencyCase] will have its `id` field set.
  Future<EmergencyCase> insertRow(
    _i1.Session session,
    EmergencyCase row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<EmergencyCase>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [EmergencyCase]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<EmergencyCase>> update(
    _i1.Session session,
    List<EmergencyCase> rows, {
    _i1.ColumnSelections<EmergencyCaseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<EmergencyCase>(
      rows,
      columns: columns?.call(EmergencyCase.t),
      transaction: transaction,
    );
  }

  /// Updates a single [EmergencyCase]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<EmergencyCase> updateRow(
    _i1.Session session,
    EmergencyCase row, {
    _i1.ColumnSelections<EmergencyCaseTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<EmergencyCase>(
      row,
      columns: columns?.call(EmergencyCase.t),
      transaction: transaction,
    );
  }

  /// Updates a single [EmergencyCase] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<EmergencyCase?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<EmergencyCaseUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<EmergencyCase>(
      id,
      columnValues: columnValues(EmergencyCase.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [EmergencyCase]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<EmergencyCase>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<EmergencyCaseUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<EmergencyCaseTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmergencyCaseTable>? orderBy,
    _i1.OrderByListBuilder<EmergencyCaseTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<EmergencyCase>(
      columnValues: columnValues(EmergencyCase.t.updateTable),
      where: where(EmergencyCase.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(EmergencyCase.t),
      orderByList: orderByList?.call(EmergencyCase.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [EmergencyCase]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<EmergencyCase>> delete(
    _i1.Session session,
    List<EmergencyCase> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<EmergencyCase>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [EmergencyCase].
  Future<EmergencyCase> deleteRow(
    _i1.Session session,
    EmergencyCase row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<EmergencyCase>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<EmergencyCase>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmergencyCaseTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<EmergencyCase>(
      where: where(EmergencyCase.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmergencyCaseTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<EmergencyCase>(
      where: where?.call(EmergencyCase.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
