import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit()
      : super(const FavoriteState([0, 3, 7, 9, 12, 13, 18, 2, 1, 5]));

  void toogleFavorite(int index) {
    try {
      List<int> favList = [];
      if (favList.contains(index)) {
        favList.remove(index);
        emit(FavoriteState(favList));
      } else {
        favList.add(index);
        emit(FavoriteState(favList));
      }
    } catch (e) {
      if (e is DioError) {
        //emit(FavoriteError(e));
      }
    }
  }
}
