import 'package:hive_flutter/hive_flutter.dart';
import '../../constants/cache/cache_constants.dart';
import 'app_cache_model.dart';

abstract class CacheManagerInterface<T> {
  final String key;
  Box<T>? box;

  CacheManagerInterface(this.key);

  Future<void> init() async {
    registerAdapters();
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(key);
    }
  }

  void registerAdapters();
  Future<void> addItem(T item);
  Future<void> addAllItems(List<T> items);

  T? getItem(String key);
  T? getAtItem(int index);
  List<T>? getAllItems();

  Future<void> putItem(String key, T item);
  Future<void> putAtItem(int index, T item);
  //Future<void> putAllItems(List<T> items);

  Future<void> deleteItem(String key);
  Future<void> deleteAtItem(int index);
  Future<void> deleteAllItems(List<T> items);
  Future<void> clear();
}

class AppCacheManager extends CacheManagerInterface<AppCacheModel> {
  AppCacheManager(super.key);

  @override
  Future<void> addAllItems(List<AppCacheModel> items) async =>
      await box?.addAll(items);

  @override
  Future<void> addItem(AppCacheModel item) async => await box?.add(item);

  @override
  Future<void> deleteAllItems(List<AppCacheModel> items) async =>
      await box?.deleteAll(items);

  @override
  Future<void> deleteAtItem(int index) async => await box?.deleteAt(index);

  @override
  Future<void> deleteItem(String key) async => await box?.delete(key);

  @override
  List<AppCacheModel>? getAllItems() => box?.values.toList();

  @override
  AppCacheModel? getAtItem(int index) => box?.getAt(index);

  @override
  AppCacheModel? getItem(String key) => box?.get(key);

  // @override
  // Future<void> putAllItems(List<AppCacheModel> items) async =>
  //     await box?.putAll(Map.fromEntries(items.map((e) => MapEntry(e.id, e))));

  @override
  Future<void> putAtItem(int index, AppCacheModel item) async =>
      await box?.putAt(index, item);

  @override
  Future<void> putItem(String key, AppCacheModel item) async =>
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
