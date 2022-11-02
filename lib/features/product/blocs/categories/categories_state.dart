part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesLoaded extends CategoriesState {
  final List categories;
  final int selectedCat;

  const CategoriesLoaded(this.categories, {this.selectedCat = -1});

  @override
  String toString() => 'SearchStateSuccess { items: $categories }';

  @override
  List<Object> get props => [categories, selectedCat];
}

class CategoriesError extends CategoriesState {
  final Object error;

  const CategoriesError(this.error);

  @override
  List<Object> get props => [error];
}
