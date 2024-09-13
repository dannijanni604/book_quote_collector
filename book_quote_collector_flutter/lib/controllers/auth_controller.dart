import 'package:book_quote_collector_flutter/config/app_routes.dart';
import 'package:flutter/material.dart';
import '../repository/auth_repository.dart';
import '../utils/custom_widgets/app_snackbars.dart';

class AuthController with ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final AuthRepository _authService = AuthRepository();

  bool isLoading = false;

  Future<void> login(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    try {
      final token = await _authService.loginUser(
        emailController.text,
        passwordController.text,
      );
      if (token != null) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
        appSnackBar(context: context, message: "Login successful");
      } else {
        appSnackBar(context: context, message: "Login failed: Token is null");
      }
    } catch (e) {
      appSnackBar(context: context, message: "Error: $e");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  // Register Method
  Future<void> register(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    try {
      await _authService.registerUser(
        emailController.text,
        passwordController.text,
        usernameController.text,
      );
      Navigator.pushReplacementNamed(context, AppRoutes.home);
      appSnackBar(context: context, message: "User registered successfully");
    } catch (e) {
      appSnackBar(context: context, message: e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
