import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/cart_model.dart';

abstract class ICartService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  ICartService(this.manager, this.scaffoldKey);
  Future<List<CartModel>> fetchCarts();
  Future<List<CartModel>> fetchCartByUserId({required int userId});
  Future<List<CartModel>> fetchCartByCartId({required int cartId});
}

class CartService extends ICartService {
  CartService(super.manager, super.scaffoldKey);

  @override
  Future<List<CartModel>> fetchCarts() async {
    final response = await manager.get("carts");
    return cartModelFromJson(response.data);
  }

  @override
  Future<List<CartModel>> fetchCartByUserId({required int userId}) async {
    final response = await manager.get("carts/user/$userId");
    return cartModelFromJson(response.data);
  }

  @override
  Future<List<CartModel>> fetchCartByCartId({required int cartId}) async {
    final response = await manager.get("carts/user/$cartId");
    return cartModelFromJson(response.data);
  }
}
