import 'package:book_quote_collector_flutter/config/app_routes.dart';
import 'package:book_quote_collector_flutter/config/constants.dart';
import 'package:book_quote_collector_flutter/utils/custom_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/auth_controller.dart';
import 'signup_view.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthController>(context);

    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextField(controller: authController.emailController, decoration: const InputDecoration(labelText: 'Email')),
              const SizedBox(height: 10),
              TextField(controller: authController.passwordController, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: authController.isLoading
                    ? null // Disable button while loading
                    : () {
                        authController.login(context);
                      },
                child: authController.isLoading ? loadingIndicator() : const Text('Login', style: buttonStyle),
              ),
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.signup),
                  child: const Text("Signup"),
                )
              ])
            ])));
  }
}
