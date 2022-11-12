// To parse this JSON data, do
//
//     final ProductsByCatModel = ProductsByCatModelFromJson(jsonString);

import 'dart:convert';

List<ProductsByCatModel> productsByCatModelFromJson(String str) =>
    List<ProductsByCatModel>.from(
        json.decode(str).map((x) => ProductsByCatModel.fromJson(x)));

String productsByCatModelToJson(List<ProductsByCatModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsByCatModel {
  ProductsByCatModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  factory ProductsByCatModel.fromJson(Map<String, dynamic> json) =>
      ProductsByCatModel(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating?.toJson(),
      };
}

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  final double rate;
  final int count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
