import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final List<int> favList;
  FavoriteCubit(this.favList) : super(FavoriteState(favList));

  void toogleFavorite(int index) {
    try {
      if (favList.contains(index)) {
        favList.remove(index);
      } else {
        favList.add(index);
      }
      emit(FavoriteState(favList));
    } catch (e) {
      if (e is DioError) {
        //emit(FavoriteError(e));
      }
    }
  }
}
