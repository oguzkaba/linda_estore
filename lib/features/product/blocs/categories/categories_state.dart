part of 'categories_bloc.dart';

@freezed
abstract class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = _CategoriesInitial;
  const factory CategoriesState.loading() = _CategoriesLoading;
  const factory CategoriesState.loaded(List categories,
      [@Default(-1) int selectedCat]) = _CategoriesLoaded;
  const factory CategoriesState.error({required Object error}) =
      _CategoriesError;
}
