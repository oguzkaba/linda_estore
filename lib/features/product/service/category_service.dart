import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/base/model/base_response_model.dart';
import '../../../core/enums/api_route_enums.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../model/category/categories_model.dart';
import '../model/products/products_model.dart';

abstract class ICategoryService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  ICategoryService(this.manager, this.scaffoldKey);
  Future<BaseResponseModel> fetchCategoriesAll();
  Future<BaseResponseModel> fetchProductByCategory(
      {required String categoryName});
}

class CategoryService extends ICategoryService {
  CategoryService(super.manager, super.scaffoldKey);

  @override
  Future<BaseResponseModel> fetchCategoriesAll() async {
    try {
      final response = await manager.get(ApiUrlEnum.categories.url);

      return BaseResponseModel(object: categoriesModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }

  @override
  Future<BaseResponseModel> fetchProductByCategory(
      {required String categoryName}) async {
    try {
      final response = await manager.get(ApiUrlEnum.products.url);

      return BaseResponseModel(object: productsModelFromJson(response.data));
    } on DioError catch (e) {
      return BaseResponseModel(
          error: NetworkErrorModel(e.message, e.response!.statusCode!));
    }
  }
}
