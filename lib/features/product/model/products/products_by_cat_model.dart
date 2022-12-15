// To parse this JSON data, do
//
//     final productsByCatModel = productsByCatModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_by_cat_model.freezed.dart';
part 'products_by_cat_model.g.dart';

List<ProductsByCatModel> productsByCatModelFromJson(String str) =>
    List<ProductsByCatModel>.from(
        json.decode(str).map((x) => ProductsByCatModel.fromJson(x)));

String productsByCatModelToJson(List<ProductsByCatModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class ProductsByCatModel with _$ProductsByCatModel {
  const factory ProductsByCatModel({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required Rating rating,
  }) = _ProductsByCatModel;

  factory ProductsByCatModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsByCatModelFromJson(json);
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
