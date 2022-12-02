// To parse this JSON data, do
//
//     final accountModel = accountModelFromJson(jsonString);

import 'dart:convert';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

class AccountModel {
  AccountModel({
    this.address,
    this.id,
    this.email,
    this.username,
    this.password,
    this.name,
    this.phone,
  });

  final Address? address;
  final int? id;
  final String? email;
  final String? username;
  final String? password;
  final Name? name;
  final String? phone;

  factory AccountModel.fromRawJson(String str) =>
      AccountModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        address: Address.fromJson(json['address']),
        id: json['id'],
        email: json['email'],
        username: json['username'],
        password: json['password'],
        name: Name.fromJson(json['name']),
        phone: json['phone'],
      );

  Map<String, dynamic> toJson() => {
        'address': address?.toJson(),
        'id': id,
        'email': email,
        'accountname': username,
        'password': password,
        'name': name?.toJson(),
        'phone': phone,
      };
}

class Address {
  Address({
    this.geolocation,
    this.city,
    this.street,
    this.number,
    this.zipcode,
  });

  final Geolocation? geolocation;
  final String? city;
  final String? street;
  final int? number;
  final String? zipcode;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        geolocation: Geolocation.fromJson(json['geolocation']),
        city: json['city'],
        street: json['street'],
        number: json['number'],
        zipcode: json['zipcode'],
      );

  Map<String, dynamic> toJson() => {
        'geolocation': geolocation?.toJson(),
        'city': city,
        'street': street,
        'number': number,
        'zipcode': zipcode,
      };
}

class Geolocation {
  Geolocation({
    this.lat,
    this.long,
  });

  final String? lat;
  final String? long;

  factory Geolocation.fromRawJson(String str) =>
      Geolocation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        lat: json['lat'],
        long: json['long'],
      );

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
      };
}

class Name {
  Name({
    this.firstname,
    this.lastname,
  });

  final String? firstname;
  final String? lastname;

  factory Name.fromRawJson(String str) => Name.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        firstname: json['firstname'],
        lastname: json['lastname'],
      );

  Map<String, dynamic> toJson() => {
        'firstname': firstname,
        'lastname': lastname,
      };
}
