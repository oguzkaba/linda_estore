import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/enums/api_route_enums.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../../../core/base/model/base_response_model.dart';
import '../../account/model/user_model.dart';
import '../../account/service/user_service.dart';
import '../login/model/login_request_model.dart';

abstract class IAuthService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IAuthService(this.manager, this.scaffoldKey);
  Future<BaseResponseModel> loginUser({required LoginRequestModel model});
  Future<BaseResponseModel> registerUser({required UserModel model});
}

class AuthService extends IAuthService {
  AuthService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> loginUser(
      {required LoginRequestModel model}) async {
    //*Api user token request
    try {
      final response =
          await manager.post(ApiUrlEnum.authLogin.url, data: model.toJson());
      return BaseResponseModel(object: response.data);
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> registerUser({required UserModel model}) async {
    return await UserService(super.manager, super.scaffoldKey)
        .addUser(model: model);
  }
}
