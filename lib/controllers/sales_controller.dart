import 'package:vikn_mechine_task/services/salelist_service.dart';

class SalesController {

  final SaleListService service = SaleListService();

  Future<Map<String, dynamic>> getSalesList() async {

    final response = await service.getSales();

    print("API RESPONSE: $response");

    return response;
  }
}