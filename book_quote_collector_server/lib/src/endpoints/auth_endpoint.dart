import 'package:serverpod/serverpod.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import '../generated/protocol.dart';

class AuthEndpoint extends Endpoint {
  final String secretKey = 'your-development-secret-key-123456';

  Future<void> registerUser(
      Session session, String email, String password, String username) async {
    var existingUser =
        await session.db.find<User>(where: User.t.email.equals(email));
    if (existingUser.isNotEmpty) {
      throw Exception('Email already in use');
    }

    final user = User(
      username: username,
      email: email,
      passwordHash: password,
      createdAt: DateTime.now(),
    );
    await session.db.insert([user]);
  }

  Future<String> loginUser(
      Session session, String email, String password) async {
    var userList =
        await session.db.find<User>(where: User.t.email.equals(email));
    if (userList.isEmpty) {
      throw Exception('Invalid email or password');
    }

    var user = userList.first;

    if (password != user.passwordHash) {
      throw Exception('Invalid email or password');
    }
    return generateToken(user);
  }

  String generateToken(User user) {
    final jwt = JWT({
      'id': user.id,
      'username': user.username,
      'email': user.email,
      'iat': DateTime.now().millisecondsSinceEpoch,
    });
    return jwt.sign(SecretKey(secretKey));
  }
}
