import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../account/model/user_model.dart';
import '../../account/service/user_service.dart';
import '../login/model/login_request_model.dart';

abstract class IAuthService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IAuthService(this.manager, this.scaffoldKey);
  Future<String> loginUser({required LoginRequestModel model});
  Future<UserModel> registerUser({required UserModel model});
}

class AuthService extends IAuthService {
  AuthService(super.manager, super.scaffoldKey);

  @override
  Future<String> loginUser({required LoginRequestModel model}) async {
    //*Api user token request

    final response = await manager.post("/auth/login", data: model.toJson());
    return response.data;
  }

  @override
  Future<UserModel> registerUser({required UserModel model}) async {
    return await UserService(super.manager, super.scaffoldKey)
        .addUser(model: model);
  }
}
