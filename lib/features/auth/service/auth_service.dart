import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/base/model/base_response_model.dart';
import '../../../core/enums/api_route_enums.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../../account/service/account_service.dart';
import '../login/model/login_request_model.dart';
import '../login/model/login_response_model.dart';
import '../register/model/register_request_model.dart';

abstract class IAuthService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IAuthService(this.manager, this.scaffoldKey);
  Future<BaseResponseModel> login({required LoginRequestModel model});
  Future<BaseResponseModel> register({required RegisterRequestModel model});
}

class AuthService extends IAuthService {
  AuthService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> login({required LoginRequestModel model}) async {
    //*Api user token request
    try {
      final response =
          await manager.post(ApiUrlEnum.authLogin.url, data: model.toJson());
      return BaseResponseModel(
          object: loginResponseModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> register(
      {required RegisterRequestModel model}) async {
    return await AccountService(super.manager, super.scaffoldKey)
        .addAccount(model: model);
  }
}
