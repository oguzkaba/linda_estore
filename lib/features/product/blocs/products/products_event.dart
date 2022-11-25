part of 'products_bloc.dart';

@freezed
abstract class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.fetch(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey}) = _ProductsFetched;

  const factory ProductsEvent.fetchByCat(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required String categoryName}) = _ProductsByCategoryFetched;
}
