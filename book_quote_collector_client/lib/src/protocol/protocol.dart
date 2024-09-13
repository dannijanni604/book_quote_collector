/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'author.dart' as _i2;
import 'book.dart' as _i3;
import 'quote.dart' as _i4;
import 'user.dart' as _i5;
import 'package:book_quote_collector_client/src/protocol/quote.dart' as _i6;
export 'author.dart';
export 'book.dart';
export 'quote.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Author) {
      return _i2.Author.fromJson(data) as T;
    }
    if (t == _i3.Book) {
      return _i3.Book.fromJson(data) as T;
    }
    if (t == _i4.Quote) {
      return _i4.Quote.fromJson(data) as T;
    }
    if (t == _i5.User) {
      return _i5.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Author?>()) {
      return (data != null ? _i2.Author.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Book?>()) {
      return (data != null ? _i3.Book.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Quote?>()) {
      return (data != null ? _i4.Quote.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.User?>()) {
      return (data != null ? _i5.User.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<_i6.Quote>) {
      return (data as List).map((e) => deserialize<_i6.Quote>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Author) {
      return 'Author';
    }
    if (data is _i3.Book) {
      return 'Book';
    }
    if (data is _i4.Quote) {
      return 'Quote';
    }
    if (data is _i5.User) {
      return 'User';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Author') {
      return deserialize<_i2.Author>(data['data']);
    }
    if (data['className'] == 'Book') {
      return deserialize<_i3.Book>(data['data']);
    }
    if (data['className'] == 'Quote') {
      return deserialize<_i4.Quote>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i5.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
