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

abstract class Patient
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PatientTable();

  static const db = PatientRepository._();

  @override
  int? id;

  int? userId;

  String patientId;

  String department;

  String session;

  String? emergencyContact;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PatientInclude include() {
    return PatientInclude._();
  }

  static PatientIncludeList includeList({
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    PatientInclude? include,
  }) {
    return PatientIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Patient.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Patient.t),
      include: include,
    );
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

class PatientUpdateTable extends _i1.UpdateTable<PatientTable> {
  PatientUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> patientId(String value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<String, String> department(String value) => _i1.ColumnValue(
    table.department,
    value,
  );

  _i1.ColumnValue<String, String> session(String value) => _i1.ColumnValue(
    table.session,
    value,
  );

  _i1.ColumnValue<String, String> emergencyContact(String? value) =>
      _i1.ColumnValue(
        table.emergencyContact,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class PatientTable extends _i1.Table<int?> {
  PatientTable({super.tableRelation}) : super(tableName: 'patient') {
    updateTable = PatientUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    patientId = _i1.ColumnString(
      'patientId',
      this,
    );
    department = _i1.ColumnString(
      'department',
      this,
    );
    session = _i1.ColumnString(
      'session',
      this,
    );
    emergencyContact = _i1.ColumnString(
      'emergencyContact',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final PatientUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString patientId;

  late final _i1.ColumnString department;

  late final _i1.ColumnString session;

  late final _i1.ColumnString emergencyContact;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    patientId,
    department,
    session,
    emergencyContact,
    createdAt,
  ];
}

class PatientInclude extends _i1.IncludeObject {
  PatientInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Patient.t;
}

class PatientIncludeList extends _i1.IncludeList {
  PatientIncludeList._({
    _i1.WhereExpressionBuilder<PatientTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Patient.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Patient.t;
}

class PatientRepository {
  const PatientRepository._();

  /// Returns a list of [Patient]s matching the given query parameters.
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
  Future<List<Patient>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Patient>(
      where: where?.call(Patient.t),
      orderBy: orderBy?.call(Patient.t),
      orderByList: orderByList?.call(Patient.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Patient] matching the given query parameters.
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
  Future<Patient?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Patient>(
      where: where?.call(Patient.t),
      orderBy: orderBy?.call(Patient.t),
      orderByList: orderByList?.call(Patient.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Patient] by its [id] or null if no such row exists.
  Future<Patient?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Patient>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Patient]s in the list and returns the inserted rows.
  ///
  /// The returned [Patient]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Patient>> insert(
    _i1.Session session,
    List<Patient> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Patient>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Patient] and returns the inserted row.
  ///
  /// The returned [Patient] will have its `id` field set.
  Future<Patient> insertRow(
    _i1.Session session,
    Patient row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Patient>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Patient]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Patient>> update(
    _i1.Session session,
    List<Patient> rows, {
    _i1.ColumnSelections<PatientTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Patient>(
      rows,
      columns: columns?.call(Patient.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Patient]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Patient> updateRow(
    _i1.Session session,
    Patient row, {
    _i1.ColumnSelections<PatientTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Patient>(
      row,
      columns: columns?.call(Patient.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Patient] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Patient?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PatientUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Patient>(
      id,
      columnValues: columnValues(Patient.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Patient]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Patient>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PatientUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PatientTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PatientTable>? orderBy,
    _i1.OrderByListBuilder<PatientTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Patient>(
      columnValues: columnValues(Patient.t.updateTable),
      where: where(Patient.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Patient.t),
      orderByList: orderByList?.call(Patient.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Patient]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Patient>> delete(
    _i1.Session session,
    List<Patient> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Patient>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Patient].
  Future<Patient> deleteRow(
    _i1.Session session,
    Patient row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Patient>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Patient>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PatientTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Patient>(
      where: where(Patient.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PatientTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Patient>(
      where: where?.call(Patient.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
