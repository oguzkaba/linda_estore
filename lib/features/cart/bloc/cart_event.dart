part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const CartEvent(this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [];
}

class FetchCarts extends CartEvent {
  final AccountBloc accountBloc;
  const FetchCarts(super.manager, super.scaffoldKey, this.accountBloc);
}

class AddToCart extends CartEvent {
  final int productId;

  const AddToCart(this.productId, super.manager, super.scaffoldKey);

  @override
  List<Object> get props => [productId];
}

class RemoveToCart extends CartEvent {
  final int productId;

  const RemoveToCart(this.productId, super.manager, super.scaffoldKey);
  @override
  List<Object> get props => [productId];
}
