import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/product_model.dart';
import '../model/products_model.dart';

abstract class IProductService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IProductService(this.manager, this.scaffoldKey);
  Future<List<ProductsModel>> fetchProductsAll();
  Future<ProductModel> fetchProductById({required int id});
}

class ProductService extends IProductService {
  ProductService(super.manager, super.scaffoldKey);

  @override
  Future<List<ProductsModel>> fetchProductsAll() async {
    final response = await manager.get("/products");
    return productsModelFromJson(response.data);
  }

  @override
  Future<ProductModel> fetchProductById({required int id}) async {
    final response = await manager.get("/products/$id");
    return productModelFromJson(response.data);
  }
}
