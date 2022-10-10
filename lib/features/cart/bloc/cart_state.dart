part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  final CartModel cartModel;

  const CartLoaded(this.cartModel);

  @override
  List<Object> get props => [cartModel];
}

class CartError extends CartState {
  final DioError error;

  const CartError(this.error);

  @override
  List<Object> get props => [error];
}
