// To parse this JSON data, do
//
//     final accountModel = accountModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

@freezed
abstract class AccountModel with _$AccountModel {
  const factory AccountModel({
    required Address address,
    required int id,
    required String email,
    required String username,
    required String password,
    required Name name,
    required String phone,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    required Geolocation geolocation,
    required String city,
    required String street,
    required int number,
    required String zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@freezed
abstract class Geolocation with _$Geolocation {
  const factory Geolocation({
    required String lat,
    required String long,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}

@freezed
abstract class Name with _$Name {
  const factory Name({
    required String firstname,
    required String lastname,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
