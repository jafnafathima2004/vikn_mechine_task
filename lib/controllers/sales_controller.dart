import 'package:vikn_mechine_task/models/sales_model.dart';
import 'package:vikn_mechine_task/services/salelist_service.dart';

class SalesController {

  final SaleListService service = SaleListService();

  Future<List<SalesModel>> getSalesList() async {

    final response = await service.getSales();

    List data = response["data"];

    List<SalesModel> sales =
        data.map((e) => SalesModel.fromJson(e)).toList();

    return sales;
  }
}