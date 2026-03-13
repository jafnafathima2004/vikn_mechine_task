import 'package:vikn_mechine_task/services/auth_service.dart';

class AuthController {
  final AuthService service=AuthService();

  Future<void> login(String username, String password) async {

    await service.login(username, password);

  }
}