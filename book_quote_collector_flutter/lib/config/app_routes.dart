import 'package:flutter/material.dart';
import '../views/views.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String addQuote = '/add-quote';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginScreen(),
      signup: (context) => const SignupScreen(),
      home: (context) => const HomeView(),
      addQuote: (context) => const AddQuoteView(),
    };
  }
}
