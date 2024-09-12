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

abstract class Author implements _i1.SerializableModel {
  Author._({
    this.id,
    required this.name,
    required this.dateOfBirth,
    required this.biography,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  DateTime dateOfBirth;

  String biography;

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
