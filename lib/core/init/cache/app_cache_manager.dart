import 'package:hive_flutter/hive_flutter.dart';
import '../../constants/cache/cache_constants.dart';
import 'app_cache_model.dart';

abstract class ICacheManager<T> {
  final String key;
  Box<T>? box;

  ICacheManager(this.key);

  Future<void> init() async {
    registerAdapters();
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(key);
    }
  }

  void registerAdapters();
  // Future<void> addItem(T item);///model kaydederken

  T? getModel(String key);
  Future<void> setModel(String key, T item);
  Future<void> deleteToken(String key);
  Future<void> clear();
}

class AppCacheManager extends ICacheManager<AppCacheModel> {
  AppCacheManager(super.key);

  // @override
  // Future<void> addItem(String item) async => await box?.add(item);

  @override
  Future<void> deleteToken(String key) async => await box?.delete(key);

  @override
  AppCacheModel? getModel(String key) => box?.get(key);

  @override
  Future<void> setModel(String key, AppCacheModel item) async =>
      await box?.put(key, item);

  @override
  Future<void> clear() async => await box!.clear();

  @override
  void registerAdapters() {
    if (!Hive.isAdapterRegistered(CacheConstants.appCacheTypeId)) {
      Hive.registerAdapter(AppCacheModelAdapter());
    }
  }
}
