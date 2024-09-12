import 'package:book_quote_collector_client/book_quote_collector_client.dart';
import 'package:book_quote_collector_flutter/config/app_theme.dart';
import 'package:book_quote_collector_flutter/views/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'config/app_routes.dart';
import 'controllers/auth_controller.dart';

var serverIp = '192.168.1.15';
var client = Client('http://$serverIp:8080/')..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => AuthController(),
        child: MaterialApp(
          initialRoute: AppRoutes.login,
          routes: AppRoutes.getRoutes(),
          theme: lightTheme(),
        ));
  }
}
