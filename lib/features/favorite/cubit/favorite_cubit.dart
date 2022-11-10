import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(const FavoriteState(favList: []));

  Future<void> toogleFavorite(int index) async {
    try {
      if (state.favList.contains(index)) {
        var tempList = [...state.favList];
        tempList.remove(index);

        emit(FavoriteState(favList: [...tempList]));
      } else {
        emit(FavoriteState(favList: [...state.favList, index]));
      }
    } catch (e) {
      if (e is DioError) {
        //emit(FavoriteError(e));
      }
    }
  }
}
