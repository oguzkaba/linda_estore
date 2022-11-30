part of 'categories_bloc.dart';

@freezed
abstract class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetch(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      required int selectedCat}) = _CategoriesFetch;
}
