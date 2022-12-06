// To parse this JSON data, do
//
//     final categoriesModel = categoriesModelFromJson(jsonString);

import 'dart:convert';

List<String> categoriesModelFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String categoriesModelToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
