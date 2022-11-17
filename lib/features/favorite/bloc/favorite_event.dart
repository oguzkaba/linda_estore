part of 'favorite_bloc.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class InitFavorite extends FavoriteEvent {
  final List<int> favList;

  const InitFavorite(this.favList);
}

class ToogleFavorite extends FavoriteEvent {
  final int index;

  const ToogleFavorite(this.index);
}
