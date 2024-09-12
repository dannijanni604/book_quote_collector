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

abstract class Author extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Author._({
    int? id,
    required this.name,
    required this.dateOfBirth,
    required this.biography,
  }) : super(id);

  factory Author({
    int? id,
    required String name,
    required DateTime dateOfBirth,
    required String biography,
  }) = _AuthorImpl;

  factory Author.fromJson(Map<String, dynamic> jsonSerialization) {
    return Author(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      dateOfBirth:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['dateOfBirth']),
      biography: jsonSerialization['biography'] as String,
    );
  }

  static final t = AuthorTable();

  static const db = AuthorRepository._();

  String name;

  DateTime dateOfBirth;

  String biography;

  @override
  _i1.Table get table => t;

  Author copyWith({
    int? id,
    String? name,
    DateTime? dateOfBirth,
    String? biography,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'dateOfBirth': dateOfBirth.toJson(),
      'biography': biography,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'dateOfBirth': dateOfBirth.toJson(),
      'biography': biography,
    };
  }

  static AuthorInclude include() {
    return AuthorInclude._();
  }

  static AuthorIncludeList includeList({
    _i1.WhereExpressionBuilder<AuthorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AuthorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AuthorTable>? orderByList,
    AuthorInclude? include,
  }) {
    return AuthorIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Author.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Author.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AuthorImpl extends Author {
  _AuthorImpl({
    int? id,
    required String name,
    required DateTime dateOfBirth,
    required String biography,
  }) : super._(
          id: id,
          name: name,
          dateOfBirth: dateOfBirth,
          biography: biography,
        );

  @override
  Author copyWith({
    Object? id = _Undefined,
    String? name,
    DateTime? dateOfBirth,
    String? biography,
  }) {
    return Author(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      biography: biography ?? this.biography,
    );
  }
}

class AuthorTable extends _i1.Table {
  AuthorTable({super.tableRelation}) : super(tableName: 'authors') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    dateOfBirth = _i1.ColumnDateTime(
      'dateOfBirth',
      this,
    );
    biography = _i1.ColumnString(
      'biography',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnDateTime dateOfBirth;

  late final _i1.ColumnString biography;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        dateOfBirth,
        biography,
      ];
}

class AuthorInclude extends _i1.IncludeObject {
  AuthorInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Author.t;
}

class AuthorIncludeList extends _i1.IncludeList {
  AuthorIncludeList._({
    _i1.WhereExpressionBuilder<AuthorTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Author.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Author.t;
}

class AuthorRepository {
  const AuthorRepository._();

  Future<List<Author>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AuthorTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<AuthorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AuthorTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Author>(
      where: where?.call(Author.t),
      orderBy: orderBy?.call(Author.t),
      orderByList: orderByList?.call(Author.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Author?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AuthorTable>? where,
    int? offset,
    _i1.OrderByBuilder<AuthorTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<AuthorTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Author>(
      where: where?.call(Author.t),
      orderBy: orderBy?.call(Author.t),
      orderByList: orderByList?.call(Author.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Author?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Author>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Author>> insert(
    _i1.Session session,
    List<Author> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Author>(
      rows,
      transaction: transaction,
    );
  }

  Future<Author> insertRow(
    _i1.Session session,
    Author row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Author>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Author>> update(
    _i1.Session session,
    List<Author> rows, {
    _i1.ColumnSelections<AuthorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Author>(
      rows,
      columns: columns?.call(Author.t),
      transaction: transaction,
    );
  }

  Future<Author> updateRow(
    _i1.Session session,
    Author row, {
    _i1.ColumnSelections<AuthorTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Author>(
      row,
      columns: columns?.call(Author.t),
      transaction: transaction,
    );
  }

  Future<List<Author>> delete(
    _i1.Session session,
    List<Author> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Author>(
      rows,
      transaction: transaction,
    );
  }

  Future<Author> deleteRow(
    _i1.Session session,
    Author row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Author>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Author>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<AuthorTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Author>(
      where: where(Author.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<AuthorTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Author>(
      where: where?.call(Author.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
