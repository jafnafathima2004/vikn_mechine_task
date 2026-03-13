import 'package:vikn_mechine_task/models/auth_model.dart';
import 'package:vikn_mechine_task/services/auth_service.dart';
import 'package:vikn_mechine_task/shared_pref_helper/shared_prefrence.dart';

class AuthController {

  final AuthService service = AuthService();

  Future<LoginModel?> login(String username, String password) async {

    try {

      final user = await service.login(username, password);

      if (user != null) {

        await SharedPrefHelper.saveToken(user.accessToken);
        await SharedPrefHelper.saveUserId(user.userId);

      }

      return user;

    } catch (e) {

      print("Login error: $e");
      return null;

    }

  }
}