import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/cart_model.dart';
import '../service/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<FetchCarts>((event, emit) async {
      try {
        emit(CartLoading());
        final result =
            await CartService(event.manager, event.scaffoldKey).fetchCarts();
        if (result.object != null) {
          emit(CartLoaded(result.object as List<CartModel>));
        } else {
          emit(CartError(result.error!));
        }
      } catch (e) {
        emit(CartError(e));
      }
    });
  }
}
