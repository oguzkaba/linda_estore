// To parse this JSON data, do
//
//     final mockReviewsModel = mockReviewsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'mock_reviews_model.freezed.dart';
part 'mock_reviews_model.g.dart';

List<MockReviewsModel> mockReviewsModelFromJson(String str) =>
    List<MockReviewsModel>.from(
        json.decode(str).map((x) => MockReviewsModel.fromJson(x)));

String mockReviewsModelToJson(List<MockReviewsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class MockReviewsModel with _$MockReviewsModel {
  const factory MockReviewsModel({
    required int id,
    required String fullName,
    required String review,
    required int rate,
    required String ipAddress,
  }) = _MockReviewsModel;

  factory MockReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$MockReviewsModelFromJson(json);
}
