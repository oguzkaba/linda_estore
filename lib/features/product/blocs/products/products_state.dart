part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _ProductsInitial;
  const factory ProductsState.loading() = _ProductsLoading;
  const factory ProductsState.loaded(
      {required List<ProductsModel?> products,
      required List<ProductsModel?> productsByCat,
      required bool isFilterCat}) = _ProductsLoaded;
  const factory ProductsState.error({required Object error}) = _ProductsError;
}
