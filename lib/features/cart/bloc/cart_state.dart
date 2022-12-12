part of 'cart_bloc.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = _CartInitial;
  const factory CartState.loading() = CartLoading;
  const factory CartState.loaded({required List<CartModel> cartModel}) =
      _CartLoaded;
  const factory CartState.add({required List<CartModel> cartModel}) = _CartAdd;
  const factory CartState.remove({required List<CartModel> cartModel}) =
      _CartRemove;
  const factory CartState.checkout({required CheckoutStateEnum checkoutState}) =
      _CartCheckout;
  const factory CartState.error({required Object error}) = _CartError;
}
