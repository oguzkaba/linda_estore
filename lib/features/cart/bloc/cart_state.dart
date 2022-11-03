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
  final List<CartModel> cartsModel;

  const CartLoaded(this.cartsModel);

  @override
  List<Object> get props => [cartsModel];
}

class CartError extends CartState {
  final Object error;

  const CartError(this.error);

  @override
  List<Object> get props => [error];
}
