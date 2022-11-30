part of 'favorite_bloc.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _FavoriteInitial;
  const factory FavoriteState.loading() = _FavoriteLoading;
  const factory FavoriteState.loaded({required List<int> favList}) =
      _FavoriteLoaded;
  const factory FavoriteState.error({required Object error}) = _FavoriteError;
}
