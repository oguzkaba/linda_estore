import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/mock/model/review/mock_reviews_model.dart';
import '../../../../core/mock/service/mock_data_service.dart';
import '../../model/product/product_model.dart';
import '../../service/product_service.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const _ProductInitial()) {
    on<_ProductsFetch>((event, emit) async {
      try {
        emit(const _ProductLoading());
        final result = await ProductService(event.manager, event.scaffoldKey)
            .fetchProductById(id: event.id);
        final List<MockReviewsModel> reviews =
            await MockDataService.instance.readLocalJson();
        if (result.object != null) {
          emit(_ProductLoaded(
              product: result.object as ProductModel, reviews: reviews));
        } else {
          emit(_ProductError(error: result.error!));
        }
      } catch (e) {
        if (e is DioError) {
          emit(_ProductError(error: e));
        }
      }
    });
  }
}
