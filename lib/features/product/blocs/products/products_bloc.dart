import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/products/products_model.dart';
import '../../service/category_service.dart';
import '../../service/product_service.dart';

part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(const _ProductsInitial()) {
    on<_ProductsFetched>((event, emit) async {
      try {
        emit(const _ProductsLoading());
        final result = await ProductService(event.manager, event.scaffoldKey)
            .fetchProductsAll();
        if (result.object != null) {
          emit(_ProductsLoaded(
              products: result.object as List<ProductsModel>,
              productsByCat: const [],
              isFilterCat: false));
        } else {
          emit(_ProductsError(error: result.error!));
        }
      } catch (e) {
        emit(_ProductsError(error: e));
      }
    });

    on<_ProductsByCategoryFetched>((event, emit) async {
      try {
        if (event.categoryName.isNotEmpty) {
          emit(const _ProductsLoading());
          final result = await CategoryService(event.manager, event.scaffoldKey)
              .fetchProductByCategory(categoryName: event.categoryName);

          if (result.object != null) {
            List<ProductsModel> filteredList = [];
            for (final element in result.object as List<ProductsModel>) {
              //todo kontrol
              if (element.category == event.categoryName) {
                filteredList.add(element);
              }
            }

            emit(_ProductsLoaded(
                products: result.object as List<ProductsModel>,
                productsByCat: filteredList,
                isFilterCat: true));
          } else {
            emit(_ProductsError(error: result.error!));
          }
        }
      } catch (e) {
        emit(_ProductsError(error: e));
      }
    });
  }
}
