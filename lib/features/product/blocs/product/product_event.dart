part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class ProductFetched extends ProductEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final int id;

  const ProductFetched(this.manager, this.scaffoldKey, this.id);
}
