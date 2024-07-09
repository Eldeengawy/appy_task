class InvoiceModel {
  int? lineNo;
  String? productName;
  Object? unit;
  int? unitNo;
  int? price;
  int? quantity;
  int? total;
  String? expiryDate;

  InvoiceModel(
      {this.lineNo,
      this.productName,
      this.unit,
      this.unitNo,
      this.price,
      this.quantity,
      this.total,
      this.expiryDate});

  InvoiceModel.fromJson(Map<String, dynamic> json) {
    lineNo = json['lineNo'];
    productName = json['productName'];
    unit = json['unit'];
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
    data['unit'] = unit;
    data['unitNo'] = unitNo;
    data['price'] = price;
    data['quantity'] = quantity;
    data['total'] = total;
    data['expiryDate'] = expiryDate;
    return data;
  }
}
