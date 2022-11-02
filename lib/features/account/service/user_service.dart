import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/enums/api_route_enums.dart';

import '../../../core/base/model/base_response_model.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../model/user_model.dart';

abstract class IUserService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IUserService(this.manager, this.scaffoldKey);

  Future<BaseResponseModel> getUser({required int id});
  Future<BaseResponseModel> addUser({required UserModel model});
}

class UserService extends IUserService {
  UserService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> getUser({required int id}) async {
    try {
      final response = await manager.get("${ApiUrlEnum.users.url}/$id");
      return BaseResponseModel(object: userModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> addUser({required UserModel model}) async {
    try {
      Map<String, dynamic> data = model.toJson();

      final response = await manager.post(ApiUrlEnum.users.url, data: data);
      return BaseResponseModel(object: userModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }
}
