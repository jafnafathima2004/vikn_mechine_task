import 'package:vikn_mechine_task/models/auth_model.dart';
import 'package:vikn_mechine_task/services/auth_service.dart';
import 'package:vikn_mechine_task/shared_pref_helper/shared_prference.dart';

class AuthController {
  final AuthService service = AuthService();

  Future<LoginModel?> login(String username, String password) async {
    print("AuthController: login called with $username / $password");

    try {
      final user = await service.login(username, password);
      print("AuthController: service.login returned $user");

      if (user != null) {
        await SharedPrefHelper.saveToken(user.accessToken);
        await SharedPrefHelper.saveRefreshToken(user.refreshToken);
        await SharedPrefHelper.saveUserId(user.userId);
        await SharedPrefHelper.saveUsername(user.username);
      }

      return user;
    } catch (e) {
      print("Login error: $e");
      return null;
    }
  }
}
