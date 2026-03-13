import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vikn_mechine_task/models/auth_model.dart';

class AuthService {
  Future<LoginModel?> login(String username, String password) async {
    final url = Uri.parse(
      "https://api.accounts.vikncodes.com/api/v1/users/login",
    );

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": username,
        "password": password,
        "is_mobile": true,
      }),
    );

    print(response.body);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data["success"] == 6000) {
        return LoginModel.fromJson(data);
      }
    }

    return null;
  }
}
