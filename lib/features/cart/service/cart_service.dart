import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../core/base/model/base_response_model.dart';
import '../../../core/enums/api_route_enums.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../model/cart_model.dart';

abstract class ICartService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  ICartService(this.manager, this.scaffoldKey);
  Future<BaseResponseModel> fetchCarts();
  Future<BaseResponseModel> fetchCartByUserId({required int userId});
  Future<BaseResponseModel> fetchCartByCartId({required int cartId});
}

class CartService extends ICartService {
  CartService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> fetchCarts() async {
    try {
      final response = await manager.get(ApiUrlEnum.carts.url);
      return BaseResponseModel(object: cartModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> fetchCartByUserId({required int userId}) async {
    try {
      final response =
          await manager.get(ApiUrlEnum.cartsUser.url + userId.toString());
      return BaseResponseModel(object: cartModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> fetchCartByCartId({required int cartId}) async {
    try {
      final response =
          await manager.get(ApiUrlEnum.cartsUser.url + cartId.toString());
      return BaseResponseModel(object: cartModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }
}
