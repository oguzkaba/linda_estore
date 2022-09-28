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

  const ProductLoaded(this.product);

  @override
  String toString() => 'SearchStateSuccess { items: $product }';

  @override
  List<Object> get props => [product];
}

class ProductError extends ProductState {
  final DioError error;

  const ProductError(this.error);

  @override
  List<Object> get props => [error];
}
