import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../account/bloc/account_bloc.dart';
import '../model/cart_model.dart';
import '../service/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  int? userId;

  CartBloc() : super(CartInitial()) {
    on<FetchCarts>((event, emit) async {
      try {
        emit(CartLoading());
        final state = event.accountBloc.state;
        if (state is AccountLoaded) {
          userId = state.accountModel.id;
        }

        final result = await CartService(event.manager, event.scaffoldKey)
            .fetchCartByUserId(userId: userId!);

        if (result.object != null) {
          emit(CartLoaded(result.object as List<CartModel>));
        } else {
          emit(CartError(result.error!));
        }
      } catch (e) {
        emit(CartError(e));
      }
    });

    // @override
    // // ignore: unused_element
    // Future<void> close() {
    //   streamSubscription.cancel();
    //   return super.close();
    // }
  }
}
