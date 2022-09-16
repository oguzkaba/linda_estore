import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/product/service/category_service.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesEvent>((event, emit) async {
      try {
        emit(CategoriesLoading());
        final productList = await CategoryService.fetchCategoriesAll()
            .timeout(const Duration(seconds: 2))
            .onError(
                (error, stackTrace) => emit(CategoriesError(error.toString())));
        if (productList != null) {
          emit(CategoriesLoaded(productList));
        }
      } catch (e) {
        emit(CategoriesError(e.toString()));
      }
    });
  }
}
