part of 'favorite_cubit.dart';

class FavoriteState extends Equatable {
  final List<int> favList;
  const FavoriteState(this.favList);

  @override
  List<Object> get props => [favList];
}
