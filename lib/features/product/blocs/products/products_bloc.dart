import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/products_model.dart';
import '../../service/category_service.dart';
import '../../service/product_service.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsFetched>((event, emit) async {
      try {
        emit(ProductsLoading());
        //*add test for shimmer
        //await Future.delayed(Duration(seconds: 5));
        final productList =
            await ProductService(event.manager, event.scaffoldKey)
                .fetchProductsAll();
        emit(ProductsLoaded(productList));
      } catch (e) {
        if (e is DioError) {
          emit(ProductsError(e));
        }
      }
    });

    on<ProductsByCategoryFetched>((event, emit) async {
      try {
        if (event.categoryName.isNotEmpty) {
          emit(ProductsLoading());
          //*add test for shimmer
          //await Future.delayed(Duration(seconds: 5));
          final productList = await CategoryService.fetchProductByCategory(
              categoryName: event.categoryName);
          if (productList != null) {
            emit(ProductsLoaded(productList as List<ProductsModel>));
          }
        }
      } catch (e) {
        if (e is DioError) {
          emit(ProductsError(e));
        }
      }
    });
  }
}
