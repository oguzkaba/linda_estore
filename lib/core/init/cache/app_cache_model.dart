// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/cache/cache_constants.dart';

part 'app_cache_model.g.dart';

@HiveType(typeId: CacheConstants.appCacheTypeId)
class AppCacheModel extends Equatable {
  @HiveField(0)
  final String? token;
  @HiveField(1)
  final List<int>? favorites;

  const AppCacheModel({this.token, this.favorites});

  AppCacheModel copyWith({
    String? token,
    List<int>? favorites,
  }) =>
      AppCacheModel(
        token: token ?? this.token,
        favorites: favorites ?? this.favorites,
      );

  @override
  List<Object?> get props => [token, favorites];
}
