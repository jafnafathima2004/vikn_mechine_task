import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vikn_mechine_task/shared_pref_helper/shared_prference.dart';

class ProfileService {
  Future<Map<String, dynamic>> getUserProfile() async {
    String? token = await SharedPrefHelper.getToken();
    int? userId = await SharedPrefHelper.getUserId();

    final url = Uri.parse(
      "https://www.viknbooks.com/api/v10/users/user-view/$userId/",
    );

    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      },
    );

    print("URL: $url");
    print("TOKEN: $token");
    print("STATUS CODE: ${response.statusCode}");
    print("BODY: ${response.body}");

    return jsonDecode(response.body);
  }
}
