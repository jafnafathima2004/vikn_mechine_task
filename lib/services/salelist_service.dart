import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vikn_mechine_task/shared_pref_helper/shared_prefrence.dart';

class SaleListService {

  Future<Map<String, dynamic>> getSales() async {

   String? token = await SharedPrefHelper.getToken();
    int? userId = await SharedPrefHelper.getUserId();
    final url = Uri.parse(
      "https://www.api.viknbooks.com/api/v10/sales/sale-list-page/",
    );

    final response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
          "Authorization": "Bearer $token"
      },
      body: jsonEncode({
        "BranchID": 1,
        "CompanyID": "1901b825-fe6f-418d-b5f0-7223d0040d08",
        "CreatedUserID": 1,   // later replace with logged userID
        "PriceRounding": 2,
        "page_no": 1,
        "items_per_page": 10,
        "type": "Sales",
        "WarehouseID": 1
      }),
    );

    print("STATUS CODE: ${response.statusCode}");
    print("RESPONSE BODY: ${response.body}");

    return jsonDecode(response.body);
  }
}