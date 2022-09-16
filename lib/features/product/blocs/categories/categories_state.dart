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

  const CategoriesLoaded(this.categories);

  @override
  String toString() => 'SearchStateSuccess { items: $categories }';

  @override
  List<Object> get props => [categories];
}

class CategoriesError extends CategoriesState {
  final String error;

  const CategoriesError(this.error);

  @override
  List<Object> get props => [error];
}
