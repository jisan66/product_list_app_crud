class Product{
  final String id,
      productName,
      productCode,
      img,
      unitPrice,
      qty,
      totalPrice,
      createdDate;


  Product(this.id, this.productName, this.productCode, this.img, this.unitPrice, this.qty, this.totalPrice, this.createdDate);

  factory Product.toJson(Map<String, dynamic> e){
    return Product(
      e['_id'],
      e['ProductName'],
      e['ProductCode'],
      e['Img'],
      e['UnitPrice'],
      e['Qty'],
      e['TotalPrice'],
      e['CreatedDate'],
    );
  }
}