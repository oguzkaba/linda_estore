part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class FetchCarts extends CartEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const FetchCarts(this.manager, this.scaffoldKey);
}

class AddToCart extends CartEvent {
  final CartModel cartModel;

  const AddToCart(this.cartModel);

  @override
  List<Object> get props => [cartModel];
}

class RemoveToCart extends CartEvent {
  final CartModel cartModel;

  const RemoveToCart(this.cartModel);
  @override
  List<Object> get props => [cartModel];
}
