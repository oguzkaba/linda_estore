part of 'favorite_cubit.dart';

class FavoriteState extends Equatable {
  final List<int> favList;
  const FavoriteState({required this.favList});

  @override
  List<Object?> get props => [favList];
}
