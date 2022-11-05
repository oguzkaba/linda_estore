import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/enums/api_route_enums.dart';

import '../../../core/base/model/base_response_model.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../model/account_model.dart';

abstract class IAccountService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IAccountService(this.manager, this.scaffoldKey);

  Future<BaseResponseModel> getAccount({required int id});
  Future<BaseResponseModel> addAccount({required AccountModel model});
}

class AccountService extends IAccountService {
  AccountService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> getAccount({required int id}) async {
    try {
      final response = await manager.get("${ApiUrlEnum.users.url}/$id");
      return BaseResponseModel(object: accountModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> addAccount({required AccountModel model}) async {
    try {
      Map<String, dynamic> data = model.toJson();

      final response = await manager.post(ApiUrlEnum.users.url, data: data);
      return BaseResponseModel(object: accountModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }
}
