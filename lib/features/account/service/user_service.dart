import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/user_model.dart';

abstract class IUserService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IUserService(this.manager, this.scaffoldKey);

  Future<UserModel> getUser({required int id});
  Future<UserModel> addUser({required UserModel model});
}

class UserService extends IUserService {
  UserService(super.manager, super.scaffoldKey);

  @override
  Future<UserModel> getUser({required int id}) async {
    final response = await manager.get("/users/$id");
    return userModelFromJson(response.data);
  }

  @override
  Future<UserModel> addUser({required UserModel model}) async {
    Map<String, dynamic> data = model.toJson();
    final response = await manager.post("/users", data: data);
    return userModelFromJson(response.data);
  }
}
