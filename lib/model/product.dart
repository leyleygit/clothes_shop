// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  String category;
  String imageUrl;
  String productName;
  String brand;

  Product({
    this.category,
    this.imageUrl,
    this.productName,
    this.brand,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    category: json["category"],
    imageUrl: json["imageUrl"],
    productName: json["productName"],
    brand: json["brand"],
  );

  Map<String, dynamic> toJson() => {
    "category": category,
    "imageUrl": imageUrl,
    "productName": productName,
    "brand": brand,
  };
}
