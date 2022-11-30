part of 'favorite_bloc.dart';

@freezed
abstract class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.toogle({required int index}) = _ToogleFavorite;

  const factory FavoriteEvent.init({required List<int> favList}) =
      _InitFavorite;
}
