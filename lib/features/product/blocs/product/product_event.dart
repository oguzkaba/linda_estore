part of 'product_bloc.dart';

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetch(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required int id}) = _ProductsFetch;
}
