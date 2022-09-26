part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class ProductsFetched extends ProductsEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const ProductsFetched(this.manager, this.scaffoldKey);
}

class ProductsByCategoryFetched extends ProductsEvent {
  final String categoryName;

  const ProductsByCategoryFetched(this.categoryName);
}
