// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_cache_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppCacheModelAdapter extends TypeAdapter<AppCacheModel> {
  @override
  final int typeId = 1;

  @override
  AppCacheModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppCacheModel(
      fields[0] as String?,
      fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppCacheModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppCacheModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
