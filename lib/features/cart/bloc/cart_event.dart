part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class FetchCarts extends CartEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final AuthBloc authBloc;

  const FetchCarts(this.manager, this.scaffoldKey, this.authBloc);
}

class AddToCart extends CartEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final int productId;

  const AddToCart(this.productId, this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [productId];
}

class RemoveToCart extends CartEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final int productId;

  const RemoveToCart(this.productId, this.manager, this.scaffoldKey);
  @override
  List<Object> get props => [productId];
}
