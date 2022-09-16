part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class ProductsFetched extends ProductsEvent {}

class ProductsByCategoryFetched extends ProductsEvent {
  final String categoryName;

  const ProductsByCategoryFetched(this.categoryName);
}
