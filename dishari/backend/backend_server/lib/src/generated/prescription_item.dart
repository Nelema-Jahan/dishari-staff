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

abstract class PrescriptionItem
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PrescriptionItemTable();

  static const db = PrescriptionItemRepository._();

  @override
  int? id;

  int prescriptionId;

  String medicineName;

  String dosage;

  String? duration;

  String? frequency;

  String? instructions;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PrescriptionItemInclude include() {
    return PrescriptionItemInclude._();
  }

  static PrescriptionItemIncludeList includeList({
    _i1.WhereExpressionBuilder<PrescriptionItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionItemTable>? orderByList,
    PrescriptionItemInclude? include,
  }) {
    return PrescriptionItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrescriptionItem.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PrescriptionItem.t),
      include: include,
    );
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

class PrescriptionItemUpdateTable
    extends _i1.UpdateTable<PrescriptionItemTable> {
  PrescriptionItemUpdateTable(super.table);

  _i1.ColumnValue<int, int> prescriptionId(int value) => _i1.ColumnValue(
    table.prescriptionId,
    value,
  );

  _i1.ColumnValue<String, String> medicineName(String value) => _i1.ColumnValue(
    table.medicineName,
    value,
  );

  _i1.ColumnValue<String, String> dosage(String value) => _i1.ColumnValue(
    table.dosage,
    value,
  );

  _i1.ColumnValue<String, String> duration(String? value) => _i1.ColumnValue(
    table.duration,
    value,
  );

  _i1.ColumnValue<String, String> frequency(String? value) => _i1.ColumnValue(
    table.frequency,
    value,
  );

  _i1.ColumnValue<String, String> instructions(String? value) =>
      _i1.ColumnValue(
        table.instructions,
        value,
      );
}

class PrescriptionItemTable extends _i1.Table<int?> {
  PrescriptionItemTable({super.tableRelation})
    : super(tableName: 'prescription_item') {
    updateTable = PrescriptionItemUpdateTable(this);
    prescriptionId = _i1.ColumnInt(
      'prescriptionId',
      this,
    );
    medicineName = _i1.ColumnString(
      'medicineName',
      this,
    );
    dosage = _i1.ColumnString(
      'dosage',
      this,
    );
    duration = _i1.ColumnString(
      'duration',
      this,
    );
    frequency = _i1.ColumnString(
      'frequency',
      this,
    );
    instructions = _i1.ColumnString(
      'instructions',
      this,
    );
  }

  late final PrescriptionItemUpdateTable updateTable;

  late final _i1.ColumnInt prescriptionId;

  late final _i1.ColumnString medicineName;

  late final _i1.ColumnString dosage;

  late final _i1.ColumnString duration;

  late final _i1.ColumnString frequency;

  late final _i1.ColumnString instructions;

  @override
  List<_i1.Column> get columns => [
    id,
    prescriptionId,
    medicineName,
    dosage,
    duration,
    frequency,
    instructions,
  ];
}

class PrescriptionItemInclude extends _i1.IncludeObject {
  PrescriptionItemInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PrescriptionItem.t;
}

class PrescriptionItemIncludeList extends _i1.IncludeList {
  PrescriptionItemIncludeList._({
    _i1.WhereExpressionBuilder<PrescriptionItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PrescriptionItem.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PrescriptionItem.t;
}

class PrescriptionItemRepository {
  const PrescriptionItemRepository._();

  /// Returns a list of [PrescriptionItem]s matching the given query parameters.
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
  Future<List<PrescriptionItem>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PrescriptionItem>(
      where: where?.call(PrescriptionItem.t),
      orderBy: orderBy?.call(PrescriptionItem.t),
      orderByList: orderByList?.call(PrescriptionItem.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PrescriptionItem] matching the given query parameters.
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
  Future<PrescriptionItem?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrescriptionItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionItemTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PrescriptionItem>(
      where: where?.call(PrescriptionItem.t),
      orderBy: orderBy?.call(PrescriptionItem.t),
      orderByList: orderByList?.call(PrescriptionItem.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PrescriptionItem] by its [id] or null if no such row exists.
  Future<PrescriptionItem?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PrescriptionItem>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PrescriptionItem]s in the list and returns the inserted rows.
  ///
  /// The returned [PrescriptionItem]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PrescriptionItem>> insert(
    _i1.Session session,
    List<PrescriptionItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PrescriptionItem>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PrescriptionItem] and returns the inserted row.
  ///
  /// The returned [PrescriptionItem] will have its `id` field set.
  Future<PrescriptionItem> insertRow(
    _i1.Session session,
    PrescriptionItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PrescriptionItem>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PrescriptionItem]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PrescriptionItem>> update(
    _i1.Session session,
    List<PrescriptionItem> rows, {
    _i1.ColumnSelections<PrescriptionItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PrescriptionItem>(
      rows,
      columns: columns?.call(PrescriptionItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrescriptionItem]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PrescriptionItem> updateRow(
    _i1.Session session,
    PrescriptionItem row, {
    _i1.ColumnSelections<PrescriptionItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PrescriptionItem>(
      row,
      columns: columns?.call(PrescriptionItem.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PrescriptionItem] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PrescriptionItem?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrescriptionItemUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PrescriptionItem>(
      id,
      columnValues: columnValues(PrescriptionItem.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PrescriptionItem]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PrescriptionItem>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrescriptionItemUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<PrescriptionItemTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionItemTable>? orderBy,
    _i1.OrderByListBuilder<PrescriptionItemTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PrescriptionItem>(
      columnValues: columnValues(PrescriptionItem.t.updateTable),
      where: where(PrescriptionItem.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PrescriptionItem.t),
      orderByList: orderByList?.call(PrescriptionItem.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PrescriptionItem]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PrescriptionItem>> delete(
    _i1.Session session,
    List<PrescriptionItem> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PrescriptionItem>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PrescriptionItem].
  Future<PrescriptionItem> deleteRow(
    _i1.Session session,
    PrescriptionItem row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PrescriptionItem>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PrescriptionItem>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrescriptionItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PrescriptionItem>(
      where: where(PrescriptionItem.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PrescriptionItem>(
      where: where?.call(PrescriptionItem.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
