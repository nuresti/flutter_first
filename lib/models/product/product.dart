class Product {
  int? id;
  String? productName;
  double? price;
  String? description;

  Product({this.id, this.productName, this.price, this.description});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] as int?,
        productName: json['product_name'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'product_name': productName,
        'price': price,
        'description': description,
      };
}
