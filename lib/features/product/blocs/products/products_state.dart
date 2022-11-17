part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();
  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<ProductsModel?> products;
  final List<ProductsModel?> productsByCat;
  final bool isFilterCat;

  const ProductsLoaded(
      {required this.products,
      required this.productsByCat,
      required this.isFilterCat});

  @override
  List<Object> get props => [products, productsByCat];
}

class ProductsError extends ProductsState {
  final Object error;

  const ProductsError(this.error);

  @override
  List<Object> get props => [error];
}
