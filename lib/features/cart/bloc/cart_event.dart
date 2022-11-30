part of 'cart_bloc.dart';

@freezed
abstract class CartEvent with _$CartEvent {
  const factory CartEvent.fetch(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required AccountBloc accountBloc}) = _FetchCart;
  const factory CartEvent.add(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required int productId}) = _AddToCart;
  const factory CartEvent.remove(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required int productId}) = _RemoveToCart;
}
