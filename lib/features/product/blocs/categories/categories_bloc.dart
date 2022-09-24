import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../service/category_service.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesFetched>((event, emit) async {
      try {
        emit(CategoriesLoading());
        //*add test for shimmer
        await Future.delayed(Duration(seconds: 5));
        final List categoryList = await CategoryService.fetchCategoriesAll()
            .timeout(const Duration(seconds: 2))
            .onError(
                (error, stackTrace) => emit(CategoriesError(error.toString())));
        if (categoryList.isNotEmpty) {
          categoryList.insert(0, "All");
          emit(CategoriesLoaded(categoryList, selectedCat: event.selectedCat));
        }
      } catch (e) {
        emit(CategoriesError(e.toString()));
      }
    });
  }
}
