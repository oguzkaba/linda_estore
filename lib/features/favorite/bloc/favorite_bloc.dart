import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/init/cache/app_cache_model.dart';

import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/init/cache/app_cache_manager.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    on<ToogleFavorite>((event, emit) async {
      late List<int> tempList;
      AppCacheManager appCacheManager =
          AppCacheManager(CacheConstants.appCache);

      Future<List<int>> saveFav(String action) async {
        AppCacheModel getBoxModel =
            appCacheManager.getModel(CacheConstants.appCache)!;
        tempList = [...getBoxModel.favorites!];
        action == "add"
            ? tempList.add(event.index)
            : tempList.remove(event.index);

        AppCacheModel newModel = getBoxModel.copyWith(favorites: tempList);
        await appCacheManager.setModel(CacheConstants.appCache, newModel);
        return tempList;
      }

      try {
        await appCacheManager.init();
        AppCacheModel getBoxModel =
            appCacheManager.getModel(CacheConstants.appCache)!;
        if (getBoxModel.favorites != null) {
          if (getBoxModel.favorites!.contains(event.index)) {
            var a = await saveFav("remove");
            emit(FavoriteLoaded([...a]));
          } else {
            var a = await saveFav("add");
            emit(FavoriteLoaded([...a]));
          }
        } else {
          List<int> firsAddFavList = [event.index];
          AppCacheModel newModel =
              getBoxModel.copyWith(favorites: firsAddFavList);
          await appCacheManager.setModel(CacheConstants.appCache, newModel);
          emit(FavoriteLoaded(newModel.favorites!));
        }
      } catch (e) {
        emit(FavoriteError(e));
      }
    });

    on<InitFavorite>((event, emit) async {
      emit(FavoriteLoaded(event.favList));
    });
  }
}
