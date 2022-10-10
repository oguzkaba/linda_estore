part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddToCart extends CartEvent {
  final CartModel cartModel;

  const AddToCart(this.cartModel);
}

class RemoveToCart extends CartEvent {
  final CartModel cartModel;

  const RemoveToCart(this.cartModel);
}
