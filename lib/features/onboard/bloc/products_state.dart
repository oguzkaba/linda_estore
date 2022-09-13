part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<ProductsModel> products;

  const ProductsLoaded(this.products);

  @override
  String toString() => 'SearchStateSuccess { items: $products }';

  @override
  List<Object> get props => [products];
}

class ProductsError extends ProductsState {
  final String error;

  const ProductsError(this.error);

  @override
  List<Object> get props => [error];
}