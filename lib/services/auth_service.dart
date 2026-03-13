import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {

  Future<void> login(String username, String password) async {

    final url = Uri.parse(
      "https://api.accounts.vikncodes.com/api/v1/users/login",
    );

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
      },
 body: jsonEncode({
  "username": "Rabeeh@vk",
  "password": "Rabeeh@000",
  "is_mobile": true
})
    );

    print("STATUS CODE: ${response.statusCode}");
    print("RESPONSE BODY: ${response.body}");
  }
}