part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();
  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final ProductModel product;
  final List<MockDataModel> reviews;

  const ProductLoaded(this.product, this.reviews);

  @override
  String toString() => 'SearchStateSuccess { items: $product }';

  @override
  List<Object> get props => [product, reviews];
}

class ProductError extends ProductState {
  final DioError error;

  const ProductError(this.error);

  @override
  List<Object> get props => [error];
}
