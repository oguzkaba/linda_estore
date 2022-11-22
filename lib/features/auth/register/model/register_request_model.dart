// To parse this JSON data, do
//
//     final registerRequestModel = registerRequestModelFromJson(jsonString);

import 'dart:convert';

RegisterRequestModel registerRequestModelFromJson(String str) =>
    RegisterRequestModel.fromJson(json.decode(str));

String registerRequestModelToJson(RegisterRequestModel data) =>
    json.encode(data.toJson());

class RegisterRequestModel {
  RegisterRequestModel({
    this.email,
    this.username,
    this.password,
    this.name,
    this.address,
    this.phone,
  });

  final String? email;
  final String? username;
  final String? password;
  final Name? name;
  final Address? address;
  final String? phone;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      RegisterRequestModel(
        email: json["email"],
        username: json["username"],
        password: json["password"],
        name: Name.fromJson(json["name"]),
        address: Address.fromJson(json["address"]),
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "username": username,
        "password": password,
        "name": name?.toJson(),
        "address": address?.toJson(),
        "phone": phone,
      };
}

class Address {
  Address({
    this.city,
    this.street,
    this.number,
    this.zipcode,
    this.geolocation,
  });

  final String? city;
  final String? street;
  final int? number;
  final String? zipcode;
  final Geolocation? geolocation;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        street: json["street"],
        number: json["number"],
        zipcode: json["zipcode"],
        geolocation: Geolocation.fromJson(json["geolocation"]),
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "street": street,
        "number": number,
        "zipcode": zipcode,
        "geolocation": geolocation?.toJson(),
      };
}

class Geolocation {
  Geolocation({
    this.lat,
    this.long,
  });

  final String? lat;
  final String? long;

  factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        lat: json["lat"],
        long: json["long"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
      };
}

class Name {
  Name({
    this.firstname,
    this.lastname,
  });

  final String? firstname;
  final String? lastname;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        firstname: json["firstname"],
        lastname: json["lastname"],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
      };
}
