import 'package:flutter/material.dart';
import '../repository/auth_services.dart';
import '../views/home/home_view.dart';
import '../utils/app_snackbars.dart';

class AuthController with ChangeNotifier {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  final AuthService _authService = AuthService();

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
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView()));
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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeView()));
      appSnackBar(context: context, message: "User registered successfully");
    } catch (e) {
      appSnackBar(context: context, message: e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
