import 'dart:convert';

JSONDecoderModel jsonDecoderFromJson(String str) =>
    JSONDecoderModel.fromJson(json.decode(str));

class JSONDecoderModel {
  int? sub;
  String? name;
  int? iat;

  JSONDecoderModel({this.sub, this.name, this.iat});

  JSONDecoderModel.fromJson(Map<String, dynamic> json) {
    sub = json['sub'];
    name = json['name'];
    iat = json['iat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['sub'] = sub;
    data['name'] = name;
    data['iat'] = iat;
    return data;
  }
}
