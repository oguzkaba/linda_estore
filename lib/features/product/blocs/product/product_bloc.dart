import 'package:equatable/equatable.dart';
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
        final product = await ProductService.fetchProductById(id: event.id)
            .timeout(const Duration(seconds: 2))
            .onError(
                (error, stackTrace) => emit(ProductError(error.toString())));
        if (product != null) {
          emit(ProductLoaded(product));
        }
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
