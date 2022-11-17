part of 'favorite_bloc.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

class FavoriteInitial extends FavoriteState {}

class FavoriteLoading extends FavoriteState {}

class FavoriteLoaded extends FavoriteState {
  final List<int> favList;
  const FavoriteLoaded(this.favList);

  @override
  List<Object> get props => [favList];
}

class FavoriteError extends FavoriteState {
  final Object error;
  const FavoriteError(this.error);

  @override
  List<Object> get props => [error];
}
