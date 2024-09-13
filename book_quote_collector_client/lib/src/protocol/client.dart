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
import 'dart:async' as _i2;
import 'package:book_quote_collector_client/src/protocol/quote.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointAuth extends _i1.EndpointRef {
  EndpointAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'auth';

  _i2.Future<void> registerUser(
    String email,
    String password,
    String username,
  ) =>
      caller.callServerEndpoint<void>(
        'auth',
        'registerUser',
        {
          'email': email,
          'password': password,
          'username': username,
        },
      );

  _i2.Future<String> loginUser(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<String>(
        'auth',
        'loginUser',
        {
          'email': email,
          'password': password,
        },
      );
}

/// {@category Endpoint}
class EndpointQuote extends _i1.EndpointRef {
  EndpointQuote(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'quote';

  _i2.Future<int?> addQuote(_i3.Quote quote) => caller.callServerEndpoint<int?>(
        'quote',
        'addQuote',
        {'quote': quote},
      );

  _i2.Future<bool> editQuote(_i3.Quote quote) =>
      caller.callServerEndpoint<bool>(
        'quote',
        'editQuote',
        {'quote': quote},
      );

  _i2.Future<bool> deleteQuote(
    int quoteId,
    int userId,
  ) =>
      caller.callServerEndpoint<bool>(
        'quote',
        'deleteQuote',
        {
          'quoteId': quoteId,
          'userId': userId,
        },
      );

  _i2.Future<List<_i3.Quote>> fetchQuotes(int userId) =>
      caller.callServerEndpoint<List<_i3.Quote>>(
        'quote',
        'fetchQuotes',
        {'userId': userId},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    auth = EndpointAuth(this);
    quote = EndpointQuote(this);
  }

  late final EndpointAuth auth;

  late final EndpointQuote quote;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'auth': auth,
        'quote': quote,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
