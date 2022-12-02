// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

List<CartModel> cartModelFromJson(String str) =>
    List<CartModel>.from(json.decode(str).map((x) => CartModel.fromJson(x)));

String cartModelToJson(List<CartModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartModel {
  CartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  final int id;
  final int userId;
  final DateTime date;
  final List<Product> products;

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json['id'],
        userId: json['userId'],
        date: DateTime.parse(json['date']),
        products: List<Product>.from(
            json['products'].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'date': date.toIso8601String(),
        'products': List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.productId,
    required this.quantity,
  });

  final int productId;
  final int quantity;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json['productId'],
        quantity: json['quantity'],
      );

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'quantity': quantity,
      };
}
