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

abstract class MedicalHistory
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = MedicalHistoryTable();

  static const db = MedicalHistoryRepository._();

  @override
  int? id;

  int patientId;

  String condition;

  String diagnosis;

  String prescribedMedications;

  DateTime visitDate;

  int? treatedBy;

  String? notes;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static MedicalHistoryInclude include() {
    return MedicalHistoryInclude._();
  }

  static MedicalHistoryIncludeList includeList({
    _i1.WhereExpressionBuilder<MedicalHistoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicalHistoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicalHistoryTable>? orderByList,
    MedicalHistoryInclude? include,
  }) {
    return MedicalHistoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MedicalHistory.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MedicalHistory.t),
      include: include,
    );
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

class MedicalHistoryUpdateTable extends _i1.UpdateTable<MedicalHistoryTable> {
  MedicalHistoryUpdateTable(super.table);

  _i1.ColumnValue<int, int> patientId(int value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<String, String> condition(String value) => _i1.ColumnValue(
    table.condition,
    value,
  );

  _i1.ColumnValue<String, String> diagnosis(String value) => _i1.ColumnValue(
    table.diagnosis,
    value,
  );

  _i1.ColumnValue<String, String> prescribedMedications(String value) =>
      _i1.ColumnValue(
        table.prescribedMedications,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> visitDate(DateTime value) =>
      _i1.ColumnValue(
        table.visitDate,
        value,
      );

  _i1.ColumnValue<int, int> treatedBy(int? value) => _i1.ColumnValue(
    table.treatedBy,
    value,
  );

  _i1.ColumnValue<String, String> notes(String? value) => _i1.ColumnValue(
    table.notes,
    value,
  );
}

class MedicalHistoryTable extends _i1.Table<int?> {
  MedicalHistoryTable({super.tableRelation})
    : super(tableName: 'medical_history') {
    updateTable = MedicalHistoryUpdateTable(this);
    patientId = _i1.ColumnInt(
      'patientId',
      this,
    );
    condition = _i1.ColumnString(
      'condition',
      this,
    );
    diagnosis = _i1.ColumnString(
      'diagnosis',
      this,
    );
    prescribedMedications = _i1.ColumnString(
      'prescribedMedications',
      this,
    );
    visitDate = _i1.ColumnDateTime(
      'visitDate',
      this,
    );
    treatedBy = _i1.ColumnInt(
      'treatedBy',
      this,
    );
    notes = _i1.ColumnString(
      'notes',
      this,
    );
  }

  late final MedicalHistoryUpdateTable updateTable;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnString condition;

  late final _i1.ColumnString diagnosis;

  late final _i1.ColumnString prescribedMedications;

  late final _i1.ColumnDateTime visitDate;

  late final _i1.ColumnInt treatedBy;

  late final _i1.ColumnString notes;

  @override
  List<_i1.Column> get columns => [
    id,
    patientId,
    condition,
    diagnosis,
    prescribedMedications,
    visitDate,
    treatedBy,
    notes,
  ];
}

class MedicalHistoryInclude extends _i1.IncludeObject {
  MedicalHistoryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => MedicalHistory.t;
}

class MedicalHistoryIncludeList extends _i1.IncludeList {
  MedicalHistoryIncludeList._({
    _i1.WhereExpressionBuilder<MedicalHistoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MedicalHistory.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MedicalHistory.t;
}

class MedicalHistoryRepository {
  const MedicalHistoryRepository._();

  /// Returns a list of [MedicalHistory]s matching the given query parameters.
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
  Future<List<MedicalHistory>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicalHistoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicalHistoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicalHistoryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MedicalHistory>(
      where: where?.call(MedicalHistory.t),
      orderBy: orderBy?.call(MedicalHistory.t),
      orderByList: orderByList?.call(MedicalHistory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [MedicalHistory] matching the given query parameters.
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
  Future<MedicalHistory?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicalHistoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<MedicalHistoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MedicalHistoryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MedicalHistory>(
      where: where?.call(MedicalHistory.t),
      orderBy: orderBy?.call(MedicalHistory.t),
      orderByList: orderByList?.call(MedicalHistory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [MedicalHistory] by its [id] or null if no such row exists.
  Future<MedicalHistory?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MedicalHistory>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [MedicalHistory]s in the list and returns the inserted rows.
  ///
  /// The returned [MedicalHistory]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MedicalHistory>> insert(
    _i1.Session session,
    List<MedicalHistory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MedicalHistory>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MedicalHistory] and returns the inserted row.
  ///
  /// The returned [MedicalHistory] will have its `id` field set.
  Future<MedicalHistory> insertRow(
    _i1.Session session,
    MedicalHistory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MedicalHistory>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MedicalHistory]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MedicalHistory>> update(
    _i1.Session session,
    List<MedicalHistory> rows, {
    _i1.ColumnSelections<MedicalHistoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MedicalHistory>(
      rows,
      columns: columns?.call(MedicalHistory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MedicalHistory]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MedicalHistory> updateRow(
    _i1.Session session,
    MedicalHistory row, {
    _i1.ColumnSelections<MedicalHistoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MedicalHistory>(
      row,
      columns: columns?.call(MedicalHistory.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MedicalHistory] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<MedicalHistory?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<MedicalHistoryUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<MedicalHistory>(
      id,
      columnValues: columnValues(MedicalHistory.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [MedicalHistory]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<MedicalHistory>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<MedicalHistoryUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MedicalHistoryTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MedicalHistoryTable>? orderBy,
    _i1.OrderByListBuilder<MedicalHistoryTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<MedicalHistory>(
      columnValues: columnValues(MedicalHistory.t.updateTable),
      where: where(MedicalHistory.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MedicalHistory.t),
      orderByList: orderByList?.call(MedicalHistory.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [MedicalHistory]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MedicalHistory>> delete(
    _i1.Session session,
    List<MedicalHistory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MedicalHistory>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MedicalHistory].
  Future<MedicalHistory> deleteRow(
    _i1.Session session,
    MedicalHistory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MedicalHistory>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MedicalHistory>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MedicalHistoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MedicalHistory>(
      where: where(MedicalHistory.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MedicalHistoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MedicalHistory>(
      where: where?.call(MedicalHistory.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
