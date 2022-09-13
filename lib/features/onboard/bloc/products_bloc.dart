import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/onboard/service/product_service.dart';

import '../model/products_model.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(ProductsInitial()) {
    on<ProductsFetched>((event, emit) async {
      try {
        emit(ProductsLoading());
        final productList = await ProductService.fetchProductsAll();
        if (productList != null) {
          emit(ProductsLoaded(productList));
        }
      } catch (e) {
        emit(ProductsError(e.toString()));
      }
    });
  }
}
