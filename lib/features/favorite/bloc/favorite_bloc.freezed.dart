// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toogle,
    required TResult Function(List<int> favList) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? toogle,
    TResult? Function(List<int> favList)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toogle,
    TResult Function(List<int> favList)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToogleFavorite value) toogle,
    required TResult Function(_InitFavorite value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToogleFavorite value)? toogle,
    TResult? Function(_InitFavorite value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToogleFavorite value)? toogle,
    TResult Function(_InitFavorite value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ToogleFavoriteCopyWith<$Res> {
  factory _$$_ToogleFavoriteCopyWith(
          _$_ToogleFavorite value, $Res Function(_$_ToogleFavorite) then) =
      __$$_ToogleFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ToogleFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_ToogleFavorite>
    implements _$$_ToogleFavoriteCopyWith<$Res> {
  __$$_ToogleFavoriteCopyWithImpl(
      _$_ToogleFavorite _value, $Res Function(_$_ToogleFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ToogleFavorite(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ToogleFavorite implements _ToogleFavorite {
  const _$_ToogleFavorite({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'FavoriteEvent.toogle(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToogleFavorite &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToogleFavoriteCopyWith<_$_ToogleFavorite> get copyWith =>
      __$$_ToogleFavoriteCopyWithImpl<_$_ToogleFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toogle,
    required TResult Function(List<int> favList) init,
  }) {
    return toogle(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? toogle,
    TResult? Function(List<int> favList)? init,
  }) {
    return toogle?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toogle,
    TResult Function(List<int> favList)? init,
    required TResult orElse(),
  }) {
    if (toogle != null) {
      return toogle(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToogleFavorite value) toogle,
    required TResult Function(_InitFavorite value) init,
  }) {
    return toogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToogleFavorite value)? toogle,
    TResult? Function(_InitFavorite value)? init,
  }) {
    return toogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToogleFavorite value)? toogle,
    TResult Function(_InitFavorite value)? init,
    required TResult orElse(),
  }) {
    if (toogle != null) {
      return toogle(this);
    }
    return orElse();
  }
}

abstract class _ToogleFavorite implements FavoriteEvent {
  const factory _ToogleFavorite({required final int index}) = _$_ToogleFavorite;

  int get index;
  @JsonKey(ignore: true)
  _$$_ToogleFavoriteCopyWith<_$_ToogleFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitFavoriteCopyWith<$Res> {
  factory _$$_InitFavoriteCopyWith(
          _$_InitFavorite value, $Res Function(_$_InitFavorite) then) =
      __$$_InitFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> favList});
}

/// @nodoc
class __$$_InitFavoriteCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_InitFavorite>
    implements _$$_InitFavoriteCopyWith<$Res> {
  __$$_InitFavoriteCopyWithImpl(
      _$_InitFavorite _value, $Res Function(_$_InitFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favList = null,
  }) {
    return _then(_$_InitFavorite(
      favList: null == favList
          ? _value._favList
          : favList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_InitFavorite implements _InitFavorite {
  const _$_InitFavorite({required final List<int> favList})
      : _favList = favList;

  final List<int> _favList;
  @override
  List<int> get favList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favList);
  }

  @override
  String toString() {
    return 'FavoriteEvent.init(favList: $favList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitFavorite &&
            const DeepCollectionEquality().equals(other._favList, _favList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitFavoriteCopyWith<_$_InitFavorite> get copyWith =>
      __$$_InitFavoriteCopyWithImpl<_$_InitFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) toogle,
    required TResult Function(List<int> favList) init,
  }) {
    return init(favList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? toogle,
    TResult? Function(List<int> favList)? init,
  }) {
    return init?.call(favList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? toogle,
    TResult Function(List<int> favList)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(favList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToogleFavorite value) toogle,
    required TResult Function(_InitFavorite value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToogleFavorite value)? toogle,
    TResult? Function(_InitFavorite value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToogleFavorite value)? toogle,
    TResult Function(_InitFavorite value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitFavorite implements FavoriteEvent {
  const factory _InitFavorite({required final List<int> favList}) =
      _$_InitFavorite;

  List<int> get favList;
  @JsonKey(ignore: true)
  _$$_InitFavoriteCopyWith<_$_InitFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<int> favList) loaded,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<int> favList)? loaded,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<int> favList)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteInitial value) initial,
    required TResult Function(_FavoriteLoading value) loading,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteInitial value)? initial,
    TResult? Function(_FavoriteLoading value)? loading,
    TResult? Function(_FavoriteLoaded value)? loaded,
    TResult? Function(_FavoriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteInitial value)? initial,
    TResult Function(_FavoriteLoading value)? loading,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FavoriteInitialCopyWith<$Res> {
  factory _$$_FavoriteInitialCopyWith(
          _$_FavoriteInitial value, $Res Function(_$_FavoriteInitial) then) =
      __$$_FavoriteInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteInitialCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteInitial>
    implements _$$_FavoriteInitialCopyWith<$Res> {
  __$$_FavoriteInitialCopyWithImpl(
      _$_FavoriteInitial _value, $Res Function(_$_FavoriteInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoriteInitial implements _FavoriteInitial {
  const _$_FavoriteInitial();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoriteInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<int> favList) loaded,
    required TResult Function(Object error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<int> favList)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<int> favList)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteInitial value) initial,
    required TResult Function(_FavoriteLoading value) loading,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteInitial value)? initial,
    TResult? Function(_FavoriteLoading value)? loading,
    TResult? Function(_FavoriteLoaded value)? loaded,
    TResult? Function(_FavoriteError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteInitial value)? initial,
    TResult Function(_FavoriteLoading value)? loading,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FavoriteInitial implements FavoriteState {
  const factory _FavoriteInitial() = _$_FavoriteInitial;
}

/// @nodoc
abstract class _$$_FavoriteLoadingCopyWith<$Res> {
  factory _$$_FavoriteLoadingCopyWith(
          _$_FavoriteLoading value, $Res Function(_$_FavoriteLoading) then) =
      __$$_FavoriteLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoriteLoadingCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteLoading>
    implements _$$_FavoriteLoadingCopyWith<$Res> {
  __$$_FavoriteLoadingCopyWithImpl(
      _$_FavoriteLoading _value, $Res Function(_$_FavoriteLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoriteLoading implements _FavoriteLoading {
  const _$_FavoriteLoading();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoriteLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<int> favList) loaded,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<int> favList)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<int> favList)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteInitial value) initial,
    required TResult Function(_FavoriteLoading value) loading,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteInitial value)? initial,
    TResult? Function(_FavoriteLoading value)? loading,
    TResult? Function(_FavoriteLoaded value)? loaded,
    TResult? Function(_FavoriteError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteInitial value)? initial,
    TResult Function(_FavoriteLoading value)? loading,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavoriteLoading implements FavoriteState {
  const factory _FavoriteLoading() = _$_FavoriteLoading;
}

/// @nodoc
abstract class _$$_FavoriteLoadedCopyWith<$Res> {
  factory _$$_FavoriteLoadedCopyWith(
          _$_FavoriteLoaded value, $Res Function(_$_FavoriteLoaded) then) =
      __$$_FavoriteLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> favList});
}

/// @nodoc
class __$$_FavoriteLoadedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteLoaded>
    implements _$$_FavoriteLoadedCopyWith<$Res> {
  __$$_FavoriteLoadedCopyWithImpl(
      _$_FavoriteLoaded _value, $Res Function(_$_FavoriteLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favList = null,
  }) {
    return _then(_$_FavoriteLoaded(
      favList: null == favList
          ? _value._favList
          : favList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_FavoriteLoaded implements _FavoriteLoaded {
  const _$_FavoriteLoaded({required final List<int> favList})
      : _favList = favList;

  final List<int> _favList;
  @override
  List<int> get favList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favList);
  }

  @override
  String toString() {
    return 'FavoriteState.loaded(favList: $favList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteLoaded &&
            const DeepCollectionEquality().equals(other._favList, _favList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteLoadedCopyWith<_$_FavoriteLoaded> get copyWith =>
      __$$_FavoriteLoadedCopyWithImpl<_$_FavoriteLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<int> favList) loaded,
    required TResult Function(Object error) error,
  }) {
    return loaded(favList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<int> favList)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return loaded?.call(favList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<int> favList)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(favList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteInitial value) initial,
    required TResult Function(_FavoriteLoading value) loading,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteInitial value)? initial,
    TResult? Function(_FavoriteLoading value)? loading,
    TResult? Function(_FavoriteLoaded value)? loaded,
    TResult? Function(_FavoriteError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteInitial value)? initial,
    TResult Function(_FavoriteLoading value)? loading,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoriteLoaded implements FavoriteState {
  const factory _FavoriteLoaded({required final List<int> favList}) =
      _$_FavoriteLoaded;

  List<int> get favList;
  @JsonKey(ignore: true)
  _$$_FavoriteLoadedCopyWith<_$_FavoriteLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoriteErrorCopyWith<$Res> {
  factory _$$_FavoriteErrorCopyWith(
          _$_FavoriteError value, $Res Function(_$_FavoriteError) then) =
      __$$_FavoriteErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_FavoriteErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_FavoriteError>
    implements _$$_FavoriteErrorCopyWith<$Res> {
  __$$_FavoriteErrorCopyWithImpl(
      _$_FavoriteError _value, $Res Function(_$_FavoriteError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FavoriteError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FavoriteError implements _FavoriteError {
  const _$_FavoriteError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'FavoriteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteErrorCopyWith<_$_FavoriteError> get copyWith =>
      __$$_FavoriteErrorCopyWithImpl<_$_FavoriteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<int> favList) loaded,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<int> favList)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<int> favList)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteInitial value) initial,
    required TResult Function(_FavoriteLoading value) loading,
    required TResult Function(_FavoriteLoaded value) loaded,
    required TResult Function(_FavoriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteInitial value)? initial,
    TResult? Function(_FavoriteLoading value)? loading,
    TResult? Function(_FavoriteLoaded value)? loaded,
    TResult? Function(_FavoriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteInitial value)? initial,
    TResult Function(_FavoriteLoading value)? loading,
    TResult Function(_FavoriteLoaded value)? loaded,
    TResult Function(_FavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FavoriteError implements FavoriteState {
  const factory _FavoriteError({required final Object error}) =
      _$_FavoriteError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_FavoriteErrorCopyWith<_$_FavoriteError> get copyWith =>
      throw _privateConstructorUsedError;
}
