part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const ProductEvent(this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [];
}

class ProductFetched extends ProductEvent {
  final int id;

  const ProductFetched(super.manager, super.scaffoldKey, this.id);
}
