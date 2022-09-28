import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/product_model.dart';
import '../../service/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductFetched>((event, emit) async {
      try {
        emit(ProductLoading());
        //*add test for shimmer
        //await Future.delayed(Duration(seconds: 5));
        final product = await ProductService(event.manager, event.scaffoldKey)
            .fetchProductById(id: event.id);
        emit(ProductLoaded(product));
      } catch (e) {
        if (e is DioError) {
          emit(ProductError(e));
        }
      }
    });
  }
}
