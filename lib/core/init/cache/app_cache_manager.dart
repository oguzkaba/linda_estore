import 'package:hive_flutter/hive_flutter.dart';
import '../../constants/cache/cache_constants.dart';

abstract class ICacheManager<T> {
  final String key;
  Box<T>? box;

  ICacheManager(this.key);

  Future<void> init() async {
    // registerAdapters();
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(key);
    }
  }

  // void registerAdapters();
  // Future<void> addItem(T item);///model kaydederken

  T? getItem(String key);

  Future<void> putItem(String key, T item);

  Future<void> deleteItem(String key);
  Future<void> clear();
}

class AppCacheManager extends ICacheManager<String> {
  AppCacheManager(super.key);

  @override
  // Future<void> addItem(String item) async => await box?.add(item);

  @override
  Future<void> deleteItem(String key) async => await box?.delete(key);

  @override
  String? getItem(String key) => box?.get(key);

  @override
  Future<void> putItem(String key, String item) async =>
      await box?.put(key, item);

  @override
  Future<void> clear() async => await box!.clear();

  // @override
  // void registerAdapters() {
  //   if (!Hive.isAdapterRegistered(CacheConstants.appCacheTypeId)) {
  //     Hive.registerAdapter(AppCacheModelAdapter());
  //   }
  // }
}
