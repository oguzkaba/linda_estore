part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();

  @override
  List<Object> get props => [];
}

class CategoriesFetched extends CategoriesEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final int selectedCat;

  const CategoriesFetched(this.manager, this.scaffoldKey, this.selectedCat);

  @override
  List<Object> get props => [selectedCat];
}
