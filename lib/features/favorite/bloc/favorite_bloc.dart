import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/init/cache/app_cache_manager.dart';
import '../../../core/init/cache/app_cache_model.dart';

part 'favorite_bloc.freezed.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const _FavoriteInitial()) {
    on<_ToogleFavorite>((event, emit) async {
      late List<int> tempList;

      AppCacheManager appCacheManager =
          AppCacheManager(CacheConstants.appCache);
      await appCacheManager.init();
      Future<List<int>> saveFav(String action) async {
        AppCacheModel getBoxModel =
            appCacheManager.getModel(CacheConstants.appCache)!;
        tempList = [...getBoxModel.favorites!];
        action == 'add'
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
            var a = await saveFav('remove');
            emit(_FavoriteLoaded(favList: [...a]));
          } else {
            var a = await saveFav('add');
            emit(_FavoriteLoaded(favList: [...a]));
          }
        } else {
          List<int> firsAddFavList = [event.index];
          AppCacheModel newModel =
              getBoxModel.copyWith(favorites: firsAddFavList);
          await appCacheManager.setModel(CacheConstants.appCache, newModel);
          emit(_FavoriteLoaded(favList: newModel.favorites!));
        }
      } catch (e) {
        emit(_FavoriteError(error: e));
      }
    });

    on<_InitFavorite>((event, emit) async {
      emit(_FavoriteLoaded(favList: event.favList));
    });
  }
}
