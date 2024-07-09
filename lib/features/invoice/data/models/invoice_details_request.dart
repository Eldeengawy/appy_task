import 'package:app_task/features/invoice/data/models/unit_model.dart';

class InvoiceDetailsRequest {
  int? lineNo;
  String? productName;
  Unit? unit;
  int? unitNo;
  int? price;
  int? quantity;
  int? total;
  String? expiryDate;

  InvoiceDetailsRequest(
      {this.lineNo,
      this.productName,
      this.unit,
      this.unitNo,
      this.price,
      this.quantity,
      this.total,
      this.expiryDate});

  InvoiceDetailsRequest.fromJson(Map<String, dynamic> json) {
    lineNo = json['lineNo'];
    productName = json['productName'];
    unit = json['unit'] != null ? Unit.fromJson(json['unit']) : null;
    unitNo = json['unitNo'];
    price = json['price'];
    quantity = json['quantity'];
    total = json['total'];
    expiryDate = json['expiryDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lineNo'] = lineNo;
    data['productName'] = productName;
    if (unit != null) {
      data['unit'] = unit!.toJson();
    }
    data['unitNo'] = unitNo;
    data['price'] = price;
    data['quantity'] = quantity;
    data['total'] = total;
    data['expiryDate'] = expiryDate;
    return data;
  }
}
