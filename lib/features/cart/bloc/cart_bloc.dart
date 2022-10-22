import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/cart/model/cart_model.dart';
import 'package:linda_wedding_ecommerce/features/cart/service/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<FetchCarts>((event, emit) async {
      try {
        emit(CartLoading());
        final carts =
            await CartService(event.manager, event.scaffoldKey).fetchCarts();
        emit(CartLoaded(carts));
      } catch (e) {
        if (e is DioError) {
          emit(CartError(e));
        }
      }
    });
  }
}
