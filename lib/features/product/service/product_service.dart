import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/product/utils/service_helper.dart';
import '../model/products_model.dart';

abstract class IProductService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IProductService(this.manager, this.scaffoldKey);
  Future<List<ProductsModel>> fetchProductsAll();
}

class ProductService extends IProductService with ServiceHelper {
  ProductService(super.manager, super.scaffoldKey);

  @override
  Future<List<ProductsModel>> fetchProductsAll() async {
    final response = await manager.get("/products");

    return productsModelFromJson(response.data);
  }

  // static Future fetchProductById({required int id}) async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("https://fakestoreapi.com/products/$id"));

  //     if (response.statusCode == 200) {
  //       return productModelFromJson(response.body);
  //     } else {
  //       throw ("İstek durumu başarısız oldu: ${response.statusCode}");
  //     }
  //   } on TimeoutException catch (_) {
  //     throw ("Connection timeout");
  //   } on SocketException catch (_) {
  //     throw ("No Internet Connection");
  //   }
  // }
}
