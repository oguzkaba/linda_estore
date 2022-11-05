part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

//*Multiple Carts
class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  final List<CartModel> cartModel;

  const CartLoaded(this.cartModel);

  @override
  List<Object> get props => [cartModel];
}

class CartAdd extends CartState {
  final List<CartModel> cartsModel;

  const CartAdd(this.cartsModel);

  @override
  List<Object> get props => [cartsModel];
}

class CartRemove extends CartState {
  final List<CartModel> cartsModel;

  const CartRemove(this.cartsModel);

  @override
  List<Object> get props => [cartsModel];
}

class CartError extends CartState {
  final Object error;

  const CartError(this.error);

  @override
  List<Object> get props => [error];
}
