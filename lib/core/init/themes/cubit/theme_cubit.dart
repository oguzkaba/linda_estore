import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../themes.dart';

import '../../../constants/cache/cache_constants.dart';
import '../../cache/app_cache_manager.dart';
import '../../cache/app_cache_model.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(AppTheme.instance.lightTheme, false));
  AppCacheManager appCacheManager = AppCacheManager(CacheConstants.appCache);

  Future<void> changeTheme(BuildContext context, bool value) async {
    await appCacheManager.init();

    AppCacheModel getBoxModel =
        appCacheManager.getModel(CacheConstants.appCache)!;

    AppCacheModel newModel = getBoxModel.copyWith(isDark: value);

    await appCacheManager.setModel(CacheConstants.appCache, newModel);

    if (value) {
      emit(ThemeState(AppTheme.instance.darkTheme, value));
    } else {
      emit(ThemeState(AppTheme.instance.lightTheme, value));
    }
  }
}
