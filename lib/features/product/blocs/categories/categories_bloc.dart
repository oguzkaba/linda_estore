import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../service/category_service.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitial()) {
    on<CategoriesFetched>((event, emit) async {
      try {
        emit(CategoriesLoading());
        final result = await CategoryService(event.manager, event.scaffoldKey)
            .fetchCategoriesAll();

        if (result.object != null) {
          List categoryList = result.object as List;
          categoryList.insert(0, "All");
          emit(CategoriesLoaded(categoryList, selectedCat: event.selectedCat));
        } else {
          emit(CategoriesError(result.error!));
        }
      } catch (e) {
        emit(CategoriesError(e));
      }
    });
  }
}
