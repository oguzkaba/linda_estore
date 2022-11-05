part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const ProductsEvent(this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [];
}

class ProductsFetched extends ProductsEvent {
  const ProductsFetched(super.manager, super.scaffoldKey);
}

class ProductsByCategoryFetched extends ProductsEvent {
  final String categoryName;

  const ProductsByCategoryFetched(
      super.manager, super.scaffoldKey, this.categoryName);
}
