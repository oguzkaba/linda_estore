part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.fetch(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required AccountBloc accountBloc}) = _FetchCart;
  const factory CartEvent.add(
      {required CartModel cartModel, required int productId}) = _AddToCart;
  const factory CartEvent.remove(
      {required CartModel cartModel, required int productId}) = _RemoveToCart;
  const factory CartEvent.changeQty(
      {required CartModel cartModel,
      required int quantity,
      required int productId}) = _ChangeQtyToCart;
  const factory CartEvent.checkout({required CheckoutStateEnum checkoutState}) =
      _CheckoutToCart;
}
