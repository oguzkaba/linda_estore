// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesEvent {
  Dio get manager => throw _privateConstructorUsedError;
  GlobalKey<ScaffoldState>? get scaffoldKey =>
      throw _privateConstructorUsedError;
  int get selectedCat => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int selectedCat)
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            int selectedCat)?
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            int selectedCat)?
        fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoriesFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesEventCopyWith<CategoriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
  @useResult
  $Res call(
      {Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int selectedCat});
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? selectedCat = null,
  }) {
    return _then(_value.copyWith(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      selectedCat: null == selectedCat
          ? _value.selectedCat
          : selectedCat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesFetchCopyWith<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  factory _$$_CategoriesFetchCopyWith(
          _$_CategoriesFetch value, $Res Function(_$_CategoriesFetch) then) =
      __$$_CategoriesFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int selectedCat});
}

/// @nodoc
class __$$_CategoriesFetchCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$_CategoriesFetch>
    implements _$$_CategoriesFetchCopyWith<$Res> {
  __$$_CategoriesFetchCopyWithImpl(
      _$_CategoriesFetch _value, $Res Function(_$_CategoriesFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? selectedCat = null,
  }) {
    return _then(_$_CategoriesFetch(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      selectedCat: null == selectedCat
          ? _value.selectedCat
          : selectedCat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CategoriesFetch implements _CategoriesFetch {
  const _$_CategoriesFetch(
      {required this.manager,
      required this.scaffoldKey,
      required this.selectedCat});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final int selectedCat;

  @override
  String toString() {
    return 'CategoriesEvent.fetch(manager: $manager, scaffoldKey: $scaffoldKey, selectedCat: $selectedCat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesFetch &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.selectedCat, selectedCat) ||
                other.selectedCat == selectedCat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, manager, scaffoldKey, selectedCat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesFetchCopyWith<_$_CategoriesFetch> get copyWith =>
      __$$_CategoriesFetchCopyWithImpl<_$_CategoriesFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int selectedCat)
        fetch,
  }) {
    return fetch(manager, scaffoldKey, selectedCat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            int selectedCat)?
        fetch,
  }) {
    return fetch?.call(manager, scaffoldKey, selectedCat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            int selectedCat)?
        fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(manager, scaffoldKey, selectedCat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoriesFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _CategoriesFetch implements CategoriesEvent {
  const factory _CategoriesFetch(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      required final int selectedCat}) = _$_CategoriesFetch;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  int get selectedCat;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesFetchCopyWith<_$_CategoriesFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> categories, int selectedCat) loaded,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoriesInitial value) initial,
    required TResult Function(_CategoriesLoading value) loading,
    required TResult Function(_CategoriesLoaded value) loaded,
    required TResult Function(_CategoriesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesInitial value)? initial,
    TResult? Function(_CategoriesLoading value)? loading,
    TResult? Function(_CategoriesLoaded value)? loaded,
    TResult? Function(_CategoriesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesInitial value)? initial,
    TResult Function(_CategoriesLoading value)? loading,
    TResult Function(_CategoriesLoaded value)? loaded,
    TResult Function(_CategoriesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CategoriesInitialCopyWith<$Res> {
  factory _$$_CategoriesInitialCopyWith(_$_CategoriesInitial value,
          $Res Function(_$_CategoriesInitial) then) =
      __$$_CategoriesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CategoriesInitialCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesInitial>
    implements _$$_CategoriesInitialCopyWith<$Res> {
  __$$_CategoriesInitialCopyWithImpl(
      _$_CategoriesInitial _value, $Res Function(_$_CategoriesInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CategoriesInitial implements _CategoriesInitial {
  const _$_CategoriesInitial();

  @override
  String toString() {
    return 'CategoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CategoriesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> categories, int selectedCat) loaded,
    required TResult Function(Object error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> categories, int selectedCat)? loaded,
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
    required TResult Function(_CategoriesInitial value) initial,
    required TResult Function(_CategoriesLoading value) loading,
    required TResult Function(_CategoriesLoaded value) loaded,
    required TResult Function(_CategoriesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesInitial value)? initial,
    TResult? Function(_CategoriesLoading value)? loading,
    TResult? Function(_CategoriesLoaded value)? loaded,
    TResult? Function(_CategoriesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesInitial value)? initial,
    TResult Function(_CategoriesLoading value)? loading,
    TResult Function(_CategoriesLoaded value)? loaded,
    TResult Function(_CategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CategoriesInitial implements CategoriesState {
  const factory _CategoriesInitial() = _$_CategoriesInitial;
}

/// @nodoc
abstract class _$$_CategoriesLoadingCopyWith<$Res> {
  factory _$$_CategoriesLoadingCopyWith(_$_CategoriesLoading value,
          $Res Function(_$_CategoriesLoading) then) =
      __$$_CategoriesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CategoriesLoadingCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesLoading>
    implements _$$_CategoriesLoadingCopyWith<$Res> {
  __$$_CategoriesLoadingCopyWithImpl(
      _$_CategoriesLoading _value, $Res Function(_$_CategoriesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CategoriesLoading implements _CategoriesLoading {
  const _$_CategoriesLoading();

  @override
  String toString() {
    return 'CategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> categories, int selectedCat) loaded,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> categories, int selectedCat)? loaded,
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
    required TResult Function(_CategoriesInitial value) initial,
    required TResult Function(_CategoriesLoading value) loading,
    required TResult Function(_CategoriesLoaded value) loaded,
    required TResult Function(_CategoriesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesInitial value)? initial,
    TResult? Function(_CategoriesLoading value)? loading,
    TResult? Function(_CategoriesLoaded value)? loaded,
    TResult? Function(_CategoriesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesInitial value)? initial,
    TResult Function(_CategoriesLoading value)? loading,
    TResult Function(_CategoriesLoaded value)? loaded,
    TResult Function(_CategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CategoriesLoading implements CategoriesState {
  const factory _CategoriesLoading() = _$_CategoriesLoading;
}

/// @nodoc
abstract class _$$_CategoriesLoadedCopyWith<$Res> {
  factory _$$_CategoriesLoadedCopyWith(
          _$_CategoriesLoaded value, $Res Function(_$_CategoriesLoaded) then) =
      __$$_CategoriesLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> categories, int selectedCat});
}

/// @nodoc
class __$$_CategoriesLoadedCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesLoaded>
    implements _$$_CategoriesLoadedCopyWith<$Res> {
  __$$_CategoriesLoadedCopyWithImpl(
      _$_CategoriesLoaded _value, $Res Function(_$_CategoriesLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedCat = null,
  }) {
    return _then(_$_CategoriesLoaded(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      null == selectedCat
          ? _value.selectedCat
          : selectedCat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CategoriesLoaded implements _CategoriesLoaded {
  const _$_CategoriesLoaded(final List<dynamic> categories,
      [this.selectedCat = -1])
      : _categories = categories;

  final List<dynamic> _categories;
  @override
  List<dynamic> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int selectedCat;

  @override
  String toString() {
    return 'CategoriesState.loaded(categories: $categories, selectedCat: $selectedCat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesLoaded &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCat, selectedCat) ||
                other.selectedCat == selectedCat));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), selectedCat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesLoadedCopyWith<_$_CategoriesLoaded> get copyWith =>
      __$$_CategoriesLoadedCopyWithImpl<_$_CategoriesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> categories, int selectedCat) loaded,
    required TResult Function(Object error) error,
  }) {
    return loaded(categories, selectedCat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return loaded?.call(categories, selectedCat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(categories, selectedCat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CategoriesInitial value) initial,
    required TResult Function(_CategoriesLoading value) loading,
    required TResult Function(_CategoriesLoaded value) loaded,
    required TResult Function(_CategoriesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesInitial value)? initial,
    TResult? Function(_CategoriesLoading value)? loading,
    TResult? Function(_CategoriesLoaded value)? loaded,
    TResult? Function(_CategoriesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesInitial value)? initial,
    TResult Function(_CategoriesLoading value)? loading,
    TResult Function(_CategoriesLoaded value)? loaded,
    TResult Function(_CategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CategoriesLoaded implements CategoriesState {
  const factory _CategoriesLoaded(final List<dynamic> categories,
      [final int selectedCat]) = _$_CategoriesLoaded;

  List<dynamic> get categories;
  int get selectedCat;
  @JsonKey(ignore: true)
  _$$_CategoriesLoadedCopyWith<_$_CategoriesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoriesErrorCopyWith<$Res> {
  factory _$$_CategoriesErrorCopyWith(
          _$_CategoriesError value, $Res Function(_$_CategoriesError) then) =
      __$$_CategoriesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_CategoriesErrorCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$_CategoriesError>
    implements _$$_CategoriesErrorCopyWith<$Res> {
  __$$_CategoriesErrorCopyWithImpl(
      _$_CategoriesError _value, $Res Function(_$_CategoriesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_CategoriesError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CategoriesError implements _CategoriesError {
  const _$_CategoriesError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'CategoriesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesErrorCopyWith<_$_CategoriesError> get copyWith =>
      __$$_CategoriesErrorCopyWithImpl<_$_CategoriesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> categories, int selectedCat) loaded,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> categories, int selectedCat)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> categories, int selectedCat)? loaded,
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
    required TResult Function(_CategoriesInitial value) initial,
    required TResult Function(_CategoriesLoading value) loading,
    required TResult Function(_CategoriesLoaded value) loaded,
    required TResult Function(_CategoriesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CategoriesInitial value)? initial,
    TResult? Function(_CategoriesLoading value)? loading,
    TResult? Function(_CategoriesLoaded value)? loaded,
    TResult? Function(_CategoriesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CategoriesInitial value)? initial,
    TResult Function(_CategoriesLoading value)? loading,
    TResult Function(_CategoriesLoaded value)? loaded,
    TResult Function(_CategoriesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CategoriesError implements CategoriesState {
  const factory _CategoriesError({required final Object error}) =
      _$_CategoriesError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_CategoriesErrorCopyWith<_$_CategoriesError> get copyWith =>
      throw _privateConstructorUsedError;
}
