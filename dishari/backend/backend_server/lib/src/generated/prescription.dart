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

abstract class Prescription
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PrescriptionTable();

  static const db = PrescriptionRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PrescriptionInclude include() {
    return PrescriptionInclude._();
  }

  static PrescriptionIncludeList includeList({
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    PrescriptionInclude? include,
  }) {
    return PrescriptionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Prescription.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Prescription.t),
      include: include,
    );
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

class PrescriptionUpdateTable extends _i1.UpdateTable<PrescriptionTable> {
  PrescriptionUpdateTable(super.table);

  _i1.ColumnValue<String, String> prescriptionNumber(String value) =>
      _i1.ColumnValue(
        table.prescriptionNumber,
        value,
      );

  _i1.ColumnValue<int, int> patientId(int value) => _i1.ColumnValue(
    table.patientId,
    value,
  );

  _i1.ColumnValue<int, int> doctorId(int value) => _i1.ColumnValue(
    table.doctorId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> date(DateTime value) => _i1.ColumnValue(
    table.date,
    value,
  );

  _i1.ColumnValue<String, String> chiefComplaints(String? value) =>
      _i1.ColumnValue(
        table.chiefComplaints,
        value,
      );

  _i1.ColumnValue<String, String> observations(String? value) =>
      _i1.ColumnValue(
        table.observations,
        value,
      );

  _i1.ColumnValue<String, String> diagnosis(String? value) => _i1.ColumnValue(
    table.diagnosis,
    value,
  );

  _i1.ColumnValue<String, String> advice(String? value) => _i1.ColumnValue(
    table.advice,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> followUpDate(DateTime? value) =>
      _i1.ColumnValue(
        table.followUpDate,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> nextVisit(DateTime? value) =>
      _i1.ColumnValue(
        table.nextVisit,
        value,
      );
}

class PrescriptionTable extends _i1.Table<int?> {
  PrescriptionTable({super.tableRelation}) : super(tableName: 'prescription') {
    updateTable = PrescriptionUpdateTable(this);
    prescriptionNumber = _i1.ColumnString(
      'prescriptionNumber',
      this,
    );
    patientId = _i1.ColumnInt(
      'patientId',
      this,
    );
    doctorId = _i1.ColumnInt(
      'doctorId',
      this,
    );
    date = _i1.ColumnDateTime(
      'date',
      this,
    );
    chiefComplaints = _i1.ColumnString(
      'chiefComplaints',
      this,
    );
    observations = _i1.ColumnString(
      'observations',
      this,
    );
    diagnosis = _i1.ColumnString(
      'diagnosis',
      this,
    );
    advice = _i1.ColumnString(
      'advice',
      this,
    );
    followUpDate = _i1.ColumnDateTime(
      'followUpDate',
      this,
    );
    nextVisit = _i1.ColumnDateTime(
      'nextVisit',
      this,
    );
  }

  late final PrescriptionUpdateTable updateTable;

  late final _i1.ColumnString prescriptionNumber;

  late final _i1.ColumnInt patientId;

  late final _i1.ColumnInt doctorId;

  late final _i1.ColumnDateTime date;

  late final _i1.ColumnString chiefComplaints;

  late final _i1.ColumnString observations;

  late final _i1.ColumnString diagnosis;

  late final _i1.ColumnString advice;

  late final _i1.ColumnDateTime followUpDate;

  late final _i1.ColumnDateTime nextVisit;

  @override
  List<_i1.Column> get columns => [
    id,
    prescriptionNumber,
    patientId,
    doctorId,
    date,
    chiefComplaints,
    observations,
    diagnosis,
    advice,
    followUpDate,
    nextVisit,
  ];
}

class PrescriptionInclude extends _i1.IncludeObject {
  PrescriptionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Prescription.t;
}

class PrescriptionIncludeList extends _i1.IncludeList {
  PrescriptionIncludeList._({
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Prescription.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Prescription.t;
}

class PrescriptionRepository {
  const PrescriptionRepository._();

  /// Returns a list of [Prescription]s matching the given query parameters.
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
  Future<List<Prescription>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Prescription>(
      where: where?.call(Prescription.t),
      orderBy: orderBy?.call(Prescription.t),
      orderByList: orderByList?.call(Prescription.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Prescription] matching the given query parameters.
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
  Future<Prescription?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Prescription>(
      where: where?.call(Prescription.t),
      orderBy: orderBy?.call(Prescription.t),
      orderByList: orderByList?.call(Prescription.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Prescription] by its [id] or null if no such row exists.
  Future<Prescription?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Prescription>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Prescription]s in the list and returns the inserted rows.
  ///
  /// The returned [Prescription]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Prescription>> insert(
    _i1.Session session,
    List<Prescription> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Prescription>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Prescription] and returns the inserted row.
  ///
  /// The returned [Prescription] will have its `id` field set.
  Future<Prescription> insertRow(
    _i1.Session session,
    Prescription row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Prescription>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Prescription]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Prescription>> update(
    _i1.Session session,
    List<Prescription> rows, {
    _i1.ColumnSelections<PrescriptionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Prescription>(
      rows,
      columns: columns?.call(Prescription.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Prescription]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Prescription> updateRow(
    _i1.Session session,
    Prescription row, {
    _i1.ColumnSelections<PrescriptionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Prescription>(
      row,
      columns: columns?.call(Prescription.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Prescription] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Prescription?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PrescriptionUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Prescription>(
      id,
      columnValues: columnValues(Prescription.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Prescription]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Prescription>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PrescriptionUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PrescriptionTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PrescriptionTable>? orderBy,
    _i1.OrderByListBuilder<PrescriptionTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Prescription>(
      columnValues: columnValues(Prescription.t.updateTable),
      where: where(Prescription.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Prescription.t),
      orderByList: orderByList?.call(Prescription.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Prescription]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Prescription>> delete(
    _i1.Session session,
    List<Prescription> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Prescription>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Prescription].
  Future<Prescription> deleteRow(
    _i1.Session session,
    Prescription row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Prescription>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Prescription>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PrescriptionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Prescription>(
      where: where(Prescription.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PrescriptionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Prescription>(
      where: where?.call(Prescription.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
