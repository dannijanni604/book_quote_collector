/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Quote extends _i1.TableRow implements _i1.ProtocolSerialization {
  Quote._({
    int? id,
    required this.quoteText,
    required this.personalNote,
    required this.createdAt,
    required this.tags,
    required this.userId,
  }) : super(id);

  factory Quote({
    int? id,
    required String quoteText,
    required String personalNote,
    required DateTime createdAt,
    required List<String> tags,
    required int userId,
  }) = _QuoteImpl;

  factory Quote.fromJson(Map<String, dynamic> jsonSerialization) {
    return Quote(
      id: jsonSerialization['id'] as int?,
      quoteText: jsonSerialization['quoteText'] as String,
      personalNote: jsonSerialization['personalNote'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      tags:
          (jsonSerialization['tags'] as List).map((e) => e as String).toList(),
      userId: jsonSerialization['userId'] as int,
    );
  }

  static final t = QuoteTable();

  static const db = QuoteRepository._();

  String quoteText;

  String personalNote;

  DateTime createdAt;

  List<String> tags;

  int userId;

  @override
  _i1.Table get table => t;

  Quote copyWith({
    int? id,
    String? quoteText,
    String? personalNote,
    DateTime? createdAt,
    List<String>? tags,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'quoteText': quoteText,
      'personalNote': personalNote,
      'createdAt': createdAt.toJson(),
      'tags': tags.toJson(),
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'quoteText': quoteText,
      'personalNote': personalNote,
      'createdAt': createdAt.toJson(),
      'tags': tags.toJson(),
      'userId': userId,
    };
  }

  static QuoteInclude include() {
    return QuoteInclude._();
  }

  static QuoteIncludeList includeList({
    _i1.WhereExpressionBuilder<QuoteTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QuoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuoteTable>? orderByList,
    QuoteInclude? include,
  }) {
    return QuoteIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Quote.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Quote.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _QuoteImpl extends Quote {
  _QuoteImpl({
    int? id,
    required String quoteText,
    required String personalNote,
    required DateTime createdAt,
    required List<String> tags,
    required int userId,
  }) : super._(
          id: id,
          quoteText: quoteText,
          personalNote: personalNote,
          createdAt: createdAt,
          tags: tags,
          userId: userId,
        );

  @override
  Quote copyWith({
    Object? id = _Undefined,
    String? quoteText,
    String? personalNote,
    DateTime? createdAt,
    List<String>? tags,
    int? userId,
  }) {
    return Quote(
      id: id is int? ? id : this.id,
      quoteText: quoteText ?? this.quoteText,
      personalNote: personalNote ?? this.personalNote,
      createdAt: createdAt ?? this.createdAt,
      tags: tags ?? this.tags.map((e0) => e0).toList(),
      userId: userId ?? this.userId,
    );
  }
}

class QuoteTable extends _i1.Table {
  QuoteTable({super.tableRelation}) : super(tableName: 'quotes') {
    quoteText = _i1.ColumnString(
      'quoteText',
      this,
    );
    personalNote = _i1.ColumnString(
      'personalNote',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    tags = _i1.ColumnSerializable(
      'tags',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString quoteText;

  late final _i1.ColumnString personalNote;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnSerializable tags;

  late final _i1.ColumnInt userId;

  @override
  List<_i1.Column> get columns => [
        id,
        quoteText,
        personalNote,
        createdAt,
        tags,
        userId,
      ];
}

class QuoteInclude extends _i1.IncludeObject {
  QuoteInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Quote.t;
}

class QuoteIncludeList extends _i1.IncludeList {
  QuoteIncludeList._({
    _i1.WhereExpressionBuilder<QuoteTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Quote.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Quote.t;
}

class QuoteRepository {
  const QuoteRepository._();

  Future<List<Quote>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuoteTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QuoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuoteTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Quote>(
      where: where?.call(Quote.t),
      orderBy: orderBy?.call(Quote.t),
      orderByList: orderByList?.call(Quote.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Quote?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuoteTable>? where,
    int? offset,
    _i1.OrderByBuilder<QuoteTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuoteTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Quote>(
      where: where?.call(Quote.t),
      orderBy: orderBy?.call(Quote.t),
      orderByList: orderByList?.call(Quote.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Quote?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Quote>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Quote>> insert(
    _i1.Session session,
    List<Quote> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Quote>(
      rows,
      transaction: transaction,
    );
  }

  Future<Quote> insertRow(
    _i1.Session session,
    Quote row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Quote>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Quote>> update(
    _i1.Session session,
    List<Quote> rows, {
    _i1.ColumnSelections<QuoteTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Quote>(
      rows,
      columns: columns?.call(Quote.t),
      transaction: transaction,
    );
  }

  Future<Quote> updateRow(
    _i1.Session session,
    Quote row, {
    _i1.ColumnSelections<QuoteTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Quote>(
      row,
      columns: columns?.call(Quote.t),
      transaction: transaction,
    );
  }

  Future<List<Quote>> delete(
    _i1.Session session,
    List<Quote> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Quote>(
      rows,
      transaction: transaction,
    );
  }

  Future<Quote> deleteRow(
    _i1.Session session,
    Quote row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Quote>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Quote>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<QuoteTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Quote>(
      where: where(Quote.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuoteTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Quote>(
      where: where?.call(Quote.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
