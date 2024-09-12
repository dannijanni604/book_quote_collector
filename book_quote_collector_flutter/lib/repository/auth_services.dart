import '../main.dart';

class AuthService {
  Future<void> registerUser(String email, String password, String username) async {
    try {
      await client.auth.registerUser(email, password, username);
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }

  Future<String?> loginUser(String email, String password) async {
    try {
      final token = await client.auth.loginUser(email, password);
      return token;
    } catch (e) {
      throw Exception(e);
    }
  }
}
