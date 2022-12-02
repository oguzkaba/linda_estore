// To parse this JSON data, do
//
//     final MockDataModel = MockDataModelFromJson(jsonString);

import 'dart:convert';

List<MockDataModel> mockDataModelFromJson(String str) =>
    List<MockDataModel>.from(
        json.decode(str).map((x) => MockDataModel.fromJson(x)));

String mockDataModelToJson(List<MockDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MockDataModel {
  MockDataModel({
    required this.id,
    required this.fullName,
    required this.review,
    required this.rate,
    required this.ipAddress,
  });

  final int id;
  final String fullName;
  final String review;
  final int rate;
  final String ipAddress;

  factory MockDataModel.fromJson(Map<String, dynamic> json) => MockDataModel(
        id: json['id'],
        fullName: json['fullName'],
        review: json['review'],
        rate: json['rate'],
        ipAddress: json['ipAddress'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'review': review,
        'rate': rate,
        'ipAddress': ipAddress,
      };
}
