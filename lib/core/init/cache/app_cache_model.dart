// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/cache/cache_constants.dart';

part 'app_cache_model.g.dart';

@HiveType(typeId: CacheConstants.appCacheTypeId)
class AppCacheModel {
  @HiveField(0)
  final String? token;
  @HiveField(1)
  final List<int>? favorites;
  @HiveField(2)
  final bool? isDark;

  const AppCacheModel({this.isDark, this.token, this.favorites});

  AppCacheModel copyWith({String? token, List<int>? favorites, bool? isDark}) =>
      AppCacheModel(
          token: token ?? this.token,
          favorites: favorites ?? this.favorites,
          isDark: isDark ?? this.isDark);
}
