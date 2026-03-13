class SalesModel {
  final String id;
  final String voucherNo;
  final String date;
  final String customerName;
  final double grandTotal;
  final String status;

  SalesModel({
    required this.id,
    required this.voucherNo,
    required this.date,
    required this.customerName,
    required this.grandTotal,
    required this.status,
  });

  factory SalesModel.fromJson(Map<String, dynamic> json) {
    return SalesModel(
      id: json["id"] ?? "",
      voucherNo: json["VoucherNo"] ?? "",
      date: json["Date"] ?? "",
      customerName: json["CustomerName"] ?? "",
      grandTotal: (json["GrandTotal"] ?? 0).toDouble(),
      status: json["Status"] ?? "",
    );
  }
}
