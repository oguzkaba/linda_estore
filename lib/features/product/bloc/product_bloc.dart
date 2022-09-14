import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/onboard/service/product_service.dart';

import '../../onboard/model/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductFetched>((event, emit) async {
      try {
        emit(ProductLoading());
        final product = await ProductService.fetchProductId(id: event.id)
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
