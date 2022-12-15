import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/enums/checkout_enums.dart';
import '../../account/bloc/account_bloc.dart';
import '../model/cart_model.dart';
import '../service/cart_service.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  int? userId;
  CartBloc() : super(const _CartInitial()) {
    on<_FetchCart>((event, emit) async {
      try {
        emit(const CartLoading());
        final state = event.accountBloc.state;

        state.whenOrNull(
          loaded: (accountModel) => userId = accountModel.id,
        );

        final result = await CartService(event.manager, event.scaffoldKey)
            .fetchCartByUserId(userId: userId!);

        if (result.object != null) {
          emit(_CartLoaded(cartModel: result.object as List<CartModel>));
        } else {
          emit(_CartError(error: result.error!));
        }
      } catch (e) {
        emit(_CartError(error: e));
      }
    });

    on<_AddToCart>((event, emit) async {
      emit(const CartLoading());
      try {
        await Future.delayed(Duration(milliseconds: 500));

        CartModel cartModel = event.cartModel;

        emit(_CartLoaded(cartModel: [
          cartModel.copyWith(products: [
            ...cartModel.products,
            Product(productId: event.productId, quantity: 1)
          ])
        ]));
      } catch (e) {
        emit(_CartError(error: e));
      }
    });

    on<_RemoveToCart>((event, emit) async {
      emit(const CartLoading());
      try {
        await Future.delayed(Duration(milliseconds: 500));
        CartModel cartModel = event.cartModel;

        List<Product> newProducts = List.from(cartModel.products);
        newProducts
            .removeWhere((element) => element.productId == event.productId);
        emit(_CartLoaded(
            cartModel: [cartModel.copyWith(products: newProducts)]));
      } catch (e) {
        emit(_CartError(error: e));
      }
    });

    on<_ChangeQtyToCart>((event, emit) async {
      emit(const CartLoading());
      try {
        await Future.delayed(Duration(milliseconds: 500));

        List<Product> newProducts = [];

        for (var e in event.cartModel.products) {
          if (e.productId == event.productId) {
            newProducts
                .add(Product(productId: e.productId, quantity: event.quantity));
          } else {
            newProducts
                .add(Product(productId: e.productId, quantity: e.quantity));
          }
        }

        emit(_CartLoaded(
            cartModel: [event.cartModel.copyWith(products: newProducts)]));
      } catch (e) {
        emit(_CartError(error: e));
      }
    });

    on<_CheckoutToCart>((event, emit) async {
      emit(const CartLoading());
      try {
        await Future.delayed(Duration(milliseconds: 500));
        emit(_CartCheckout(checkoutState: event.checkoutState));
      } catch (e) {
        emit(_CartError(error: e));
      }
    });
  }
}
