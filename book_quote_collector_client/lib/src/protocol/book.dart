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

abstract class Book implements _i1.SerializableModel {
  Book._({
    this.id,
    required this.title,
    required this.author,
    required this.publicationDate,
    required this.genre,
  });

  factory Book({
    int? id,
    required String title,
    required String author,
    required DateTime publicationDate,
    required String genre,
  }) = _BookImpl;

  factory Book.fromJson(Map<String, dynamic> jsonSerialization) {
    return Book(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      author: jsonSerialization['author'] as String,
      publicationDate: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['publicationDate']),
      genre: jsonSerialization['genre'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String author;

  DateTime publicationDate;

  String genre;

  Book copyWith({
    int? id,
    String? title,
    String? author,
    DateTime? publicationDate,
    String? genre,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'author': author,
      'publicationDate': publicationDate.toJson(),
      'genre': genre,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BookImpl extends Book {
  _BookImpl({
    int? id,
    required String title,
    required String author,
    required DateTime publicationDate,
    required String genre,
  }) : super._(
          id: id,
          title: title,
          author: author,
          publicationDate: publicationDate,
          genre: genre,
        );

  @override
  Book copyWith({
    Object? id = _Undefined,
    String? title,
    String? author,
    DateTime? publicationDate,
    String? genre,
  }) {
    return Book(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      publicationDate: publicationDate ?? this.publicationDate,
      genre: genre ?? this.genre,
    );
  }
}
