part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.initial() = _ProductInitial;
  const factory ProductState.loading() = _ProductLoading;
  const factory ProductState.loaded(
      {required ProductModel product,
      required List<MockReviewsModel> reviews}) = _ProductLoaded;
  const factory ProductState.error({required Object error}) = _ProductError;
}
