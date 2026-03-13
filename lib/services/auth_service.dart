import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vikn_mechine_task/models/auth_model.dart';

class AuthService {
  Future<LoginModel?> login(String username, String password) async {
    final url = Uri.parse(
      "https://api.accounts.vikncodes.com/api/v1/users/login",
    );

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "username": username,
          "password": password,
          "is_mobile": true,
        }),
      );

      print("HTTP STATUS: ${response.statusCode}");
      print("RAW BODY: ${response.body}");

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);

        if (decoded["success"] == 6000 && decoded["data"] != null) {
          final userData = decoded["data"] as Map<String, dynamic>;
          print("USER DATA: $userData");
          return LoginModel.fromJson(userData);
        } else {
          print("Login Failed: ${decoded}");
        }
      } else {
        print("HTTP Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Exception during login: $e");
    }

    return null;
  }
}
