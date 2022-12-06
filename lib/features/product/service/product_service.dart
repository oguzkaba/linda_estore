import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/base/model/base_response_model.dart';
import '../../../core/enums/api_route_enums.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../model/product/product_model.dart';
import '../model/products/products_model.dart';

abstract class IProductService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IProductService(this.manager, this.scaffoldKey);
  Future<BaseResponseModel> fetchProductsAll();
  Future<BaseResponseModel> fetchProductById({required int id});
}

class ProductService extends IProductService {
  ProductService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> fetchProductsAll() async {
    try {
      final response = await manager.get(ApiUrlEnum.products.url);
      return BaseResponseModel(object: productsModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> fetchProductById({required int id}) async {
    try {
      final response =
          await manager.get(ApiUrlEnum.products.url + id.toString());
      return BaseResponseModel(object: productModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }
}
