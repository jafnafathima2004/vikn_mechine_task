

import 'package:vikn_mechine_task/models/auth_model.dart';
import 'package:vikn_mechine_task/services/auth_service.dart';

class AuthController {

  final AuthService service = AuthService();

  Future<LoginModel?> login(String username, String password) async {
    return await service.login(username, password);
  }
}