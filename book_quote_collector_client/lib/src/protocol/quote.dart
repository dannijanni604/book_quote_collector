/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Quote implements _i1.SerializableModel {
  Quote._({
    this.id,
    required this.quoteText,
    required this.personalNote,
    required this.createdAt,
    required this.tags,
    required this.userId,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String quoteText;

  String personalNote;

  DateTime createdAt;

  List<String> tags;

  int userId;

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
