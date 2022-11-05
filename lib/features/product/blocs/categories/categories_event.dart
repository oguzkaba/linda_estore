part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const CategoriesEvent(this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [];
}

class CategoriesFetched extends CategoriesEvent {
  final int selectedCat;

  const CategoriesFetched(this.selectedCat, super.manager, super.scaffoldKey);
}
