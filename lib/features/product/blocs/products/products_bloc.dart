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
        final result = await ProductService(event.manager, event.scaffoldKey)
            .fetchProductsAll();
        if (result.object != null) {
          emit(ProductsLoaded(
              products: result.object as List<ProductsModel>,
              productsByCat: const [],
              isFilterCat: false));
        } else {
          emit(ProductsError(result.error!));
        }
      } catch (e) {
        emit(ProductsError(e));
      }
    });

    on<ProductsByCategoryFetched>((event, emit) async {
      try {
        if (event.categoryName.isNotEmpty) {
          emit(ProductsLoading());
          final result = await CategoryService(event.manager, event.scaffoldKey)
              .fetchProductByCategory(categoryName: event.categoryName);

          if (result.object != null) {
            List<ProductsModel> filteredList = [];
            for (var element in result.object as List<ProductsModel>) {
              //todo kontrol
              if (element.category == event.categoryName) {
                filteredList.add(element);
              }
            }

            emit(ProductsLoaded(
                products: result.object as List<ProductsModel>,
                productsByCat: filteredList,
                isFilterCat: true));
          } else {
            emit(ProductsError(result.error!));
          }
        }
      } catch (e) {
        emit(ProductsError(e));
      }
    });
  }
}
