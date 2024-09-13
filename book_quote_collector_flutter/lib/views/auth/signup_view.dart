import 'package:book_quote_collector_flutter/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../config/constants.dart';
import '../../controllers/auth_controller.dart';
import '../../utils/custom_widgets/loading_indicator.dart';
import 'login_view.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthController>(context);

    return Scaffold(
        appBar: AppBar(title: const Text('Sign Up')),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              TextField(controller: authController.usernameController, decoration: const InputDecoration(labelText: 'Username')),
              const SizedBox(height: 10),
              TextField(controller: authController.emailController, decoration: const InputDecoration(labelText: 'Email')),
              const SizedBox(height: 10),
              TextField(controller: authController.passwordController, decoration: const InputDecoration(labelText: 'Password'), obscureText: true),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: authController.isLoading
                      ? null
                      : () {
                          authController.register(context);
                        },
                  child: authController.isLoading ? loadingIndicator() : const Text('Sign Up', style: buttonStyle)),
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Already have an account?"),
                TextButton(onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.login), child: const Text("Login"))
              ])
            ])));
  }
}
