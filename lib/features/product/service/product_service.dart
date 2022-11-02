import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/base/model/base_response_model.dart';

import '../../../core/init/network/model/network_error_model.dart';
import '../model/product_model.dart';
import '../model/products_model.dart';

abstract class IProductService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IProductService(this.manager, this.scaffoldKey);
  Future<List<ProductsModel>> fetchProductsAll();
  Future<BaseResponseModel> fetchProductById({required int id});
}

class ProductService extends IProductService {
  ProductService(super.manager, super.scaffoldKey);

  @override
  Future<List<ProductsModel>> fetchProductsAll() async {
    final response = await manager.get("products");
    return productsModelFromJson(response.data);
  }

  @override
  Future<BaseResponseModel> fetchProductById({required int id}) async {
    try {
      final response = await manager.get("sproducts/$id");
      return BaseResponseModel(object: productModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }
}
