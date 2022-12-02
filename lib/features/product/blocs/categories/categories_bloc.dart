import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../service/category_service.dart';

part 'categories_bloc.freezed.dart';
part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const _CategoriesInitial()) {
    on<_CategoriesFetch>((event, emit) async {
      try {
        emit(const _CategoriesLoading());
        final result = await CategoryService(event.manager, event.scaffoldKey)
            .fetchCategoriesAll();

        if (result.object != null) {
          List categoryList = result.object as List;

          categoryList.insert(0, 'All');
          emit(_CategoriesLoaded(categoryList, event.selectedCat));
        } else {
          emit(_CategoriesError(error: result.error!));
        }
      } catch (e) {
        emit(_CategoriesError(error: e));
      }
    });
  }
}
