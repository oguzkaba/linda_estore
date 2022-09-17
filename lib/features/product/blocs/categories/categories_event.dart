part of 'categories_bloc.dart';

abstract class CategoriesEvent extends Equatable {
  const CategoriesEvent();

  @override
  List<Object> get props => [];
}

class CategoriesFetched extends CategoriesEvent {
  final int selectedCat;

  const CategoriesFetched(this.selectedCat);
}
