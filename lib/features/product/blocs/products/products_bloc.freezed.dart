// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  Dio get manager => throw _privateConstructorUsedError;
  GlobalKey<ScaffoldState>? get scaffoldKey =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)
        fetch,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, String categoryName)
        fetchByCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)?
        fetch,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            String categoryName)?
        fetchByCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)? fetch,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            String categoryName)?
        fetchByCat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetched value) fetch,
    required TResult Function(_ProductsByCategoryFetched value) fetchByCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetched value)? fetch,
    TResult? Function(_ProductsByCategoryFetched value)? fetchByCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetched value)? fetch,
    TResult Function(_ProductsByCategoryFetched value)? fetchByCat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsEventCopyWith<ProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
  @useResult
  $Res call({Dio manager, GlobalKey<ScaffoldState>? scaffoldKey});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsFetchedCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$$_ProductsFetchedCopyWith(
          _$_ProductsFetched value, $Res Function(_$_ProductsFetched) then) =
      __$$_ProductsFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dio manager, GlobalKey<ScaffoldState>? scaffoldKey});
}

/// @nodoc
class __$$_ProductsFetchedCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$_ProductsFetched>
    implements _$$_ProductsFetchedCopyWith<$Res> {
  __$$_ProductsFetchedCopyWithImpl(
      _$_ProductsFetched _value, $Res Function(_$_ProductsFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
  }) {
    return _then(_$_ProductsFetched(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
    ));
  }
}

/// @nodoc

class _$_ProductsFetched implements _ProductsFetched {
  const _$_ProductsFetched({required this.manager, required this.scaffoldKey});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductsEvent.fetch(manager: $manager, scaffoldKey: $scaffoldKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsFetched &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsFetchedCopyWith<_$_ProductsFetched> get copyWith =>
      __$$_ProductsFetchedCopyWithImpl<_$_ProductsFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)
        fetch,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, String categoryName)
        fetchByCat,
  }) {
    return fetch(manager, scaffoldKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)?
        fetch,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            String categoryName)?
        fetchByCat,
  }) {
    return fetch?.call(manager, scaffoldKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)? fetch,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            String categoryName)?
        fetchByCat,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(manager, scaffoldKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetched value) fetch,
    required TResult Function(_ProductsByCategoryFetched value) fetchByCat,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetched value)? fetch,
    TResult? Function(_ProductsByCategoryFetched value)? fetchByCat,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetched value)? fetch,
    TResult Function(_ProductsByCategoryFetched value)? fetchByCat,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _ProductsFetched implements ProductsEvent {
  const factory _ProductsFetched(
          {required final Dio manager,
          required final GlobalKey<ScaffoldState>? scaffoldKey}) =
      _$_ProductsFetched;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsFetchedCopyWith<_$_ProductsFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductsByCategoryFetchedCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$$_ProductsByCategoryFetchedCopyWith(
          _$_ProductsByCategoryFetched value,
          $Res Function(_$_ProductsByCategoryFetched) then) =
      __$$_ProductsByCategoryFetchedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      String categoryName});
}

/// @nodoc
class __$$_ProductsByCategoryFetchedCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$_ProductsByCategoryFetched>
    implements _$$_ProductsByCategoryFetchedCopyWith<$Res> {
  __$$_ProductsByCategoryFetchedCopyWithImpl(
      _$_ProductsByCategoryFetched _value,
      $Res Function(_$_ProductsByCategoryFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? categoryName = null,
  }) {
    return _then(_$_ProductsByCategoryFetched(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductsByCategoryFetched implements _ProductsByCategoryFetched {
  const _$_ProductsByCategoryFetched(
      {required this.manager,
      required this.scaffoldKey,
      required this.categoryName});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final String categoryName;

  @override
  String toString() {
    return 'ProductsEvent.fetchByCat(manager: $manager, scaffoldKey: $scaffoldKey, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsByCategoryFetched &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, manager, scaffoldKey, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsByCategoryFetchedCopyWith<_$_ProductsByCategoryFetched>
      get copyWith => __$$_ProductsByCategoryFetchedCopyWithImpl<
          _$_ProductsByCategoryFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)
        fetch,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, String categoryName)
        fetchByCat,
  }) {
    return fetchByCat(manager, scaffoldKey, categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)?
        fetch,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            String categoryName)?
        fetchByCat,
  }) {
    return fetchByCat?.call(manager, scaffoldKey, categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)? fetch,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            String categoryName)?
        fetchByCat,
    required TResult orElse(),
  }) {
    if (fetchByCat != null) {
      return fetchByCat(manager, scaffoldKey, categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetched value) fetch,
    required TResult Function(_ProductsByCategoryFetched value) fetchByCat,
  }) {
    return fetchByCat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetched value)? fetch,
    TResult? Function(_ProductsByCategoryFetched value)? fetchByCat,
  }) {
    return fetchByCat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetched value)? fetch,
    TResult Function(_ProductsByCategoryFetched value)? fetchByCat,
    required TResult orElse(),
  }) {
    if (fetchByCat != null) {
      return fetchByCat(this);
    }
    return orElse();
  }
}

abstract class _ProductsByCategoryFetched implements ProductsEvent {
  const factory _ProductsByCategoryFetched(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      required final String categoryName}) = _$_ProductsByCategoryFetched;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsByCategoryFetchedCopyWith<_$_ProductsByCategoryFetched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)
        loaded,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitial value) initial,
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
    required TResult Function(_ProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitial value)? initial,
    TResult? Function(_ProductsLoading value)? loading,
    TResult? Function(_ProductsLoaded value)? loaded,
    TResult? Function(_ProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitial value)? initial,
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    TResult Function(_ProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProductsInitialCopyWith<$Res> {
  factory _$$_ProductsInitialCopyWith(
          _$_ProductsInitial value, $Res Function(_$_ProductsInitial) then) =
      __$$_ProductsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductsInitialCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_ProductsInitial>
    implements _$$_ProductsInitialCopyWith<$Res> {
  __$$_ProductsInitialCopyWithImpl(
      _$_ProductsInitial _value, $Res Function(_$_ProductsInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductsInitial implements _ProductsInitial {
  const _$_ProductsInitial();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)
        loaded,
    required TResult Function(Object error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult? Function(Object error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
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
    required TResult Function(_ProductsInitial value) initial,
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
    required TResult Function(_ProductsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitial value)? initial,
    TResult? Function(_ProductsLoading value)? loading,
    TResult? Function(_ProductsLoaded value)? loaded,
    TResult? Function(_ProductsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitial value)? initial,
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    TResult Function(_ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProductsInitial implements ProductsState {
  const factory _ProductsInitial() = _$_ProductsInitial;
}

/// @nodoc
abstract class _$$_ProductsLoadingCopyWith<$Res> {
  factory _$$_ProductsLoadingCopyWith(
          _$_ProductsLoading value, $Res Function(_$_ProductsLoading) then) =
      __$$_ProductsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductsLoadingCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_ProductsLoading>
    implements _$$_ProductsLoadingCopyWith<$Res> {
  __$$_ProductsLoadingCopyWithImpl(
      _$_ProductsLoading _value, $Res Function(_$_ProductsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductsLoading implements _ProductsLoading {
  const _$_ProductsLoading();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)
        loaded,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult? Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
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
    required TResult Function(_ProductsInitial value) initial,
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
    required TResult Function(_ProductsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitial value)? initial,
    TResult? Function(_ProductsLoading value)? loading,
    TResult? Function(_ProductsLoaded value)? loaded,
    TResult? Function(_ProductsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitial value)? initial,
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    TResult Function(_ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoading implements ProductsState {
  const factory _ProductsLoading() = _$_ProductsLoading;
}

/// @nodoc
abstract class _$$_ProductsLoadedCopyWith<$Res> {
  factory _$$_ProductsLoadedCopyWith(
          _$_ProductsLoaded value, $Res Function(_$_ProductsLoaded) then) =
      __$$_ProductsLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductsModel?> products,
      List<ProductsModel?> productsByCat,
      bool isFilterCat});
}

/// @nodoc
class __$$_ProductsLoadedCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_ProductsLoaded>
    implements _$$_ProductsLoadedCopyWith<$Res> {
  __$$_ProductsLoadedCopyWithImpl(
      _$_ProductsLoaded _value, $Res Function(_$_ProductsLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productsByCat = null,
    Object? isFilterCat = null,
  }) {
    return _then(_$_ProductsLoaded(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsModel?>,
      productsByCat: null == productsByCat
          ? _value._productsByCat
          : productsByCat // ignore: cast_nullable_to_non_nullable
              as List<ProductsModel?>,
      isFilterCat: null == isFilterCat
          ? _value.isFilterCat
          : isFilterCat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductsLoaded implements _ProductsLoaded {
  const _$_ProductsLoaded(
      {required final List<ProductsModel?> products,
      required final List<ProductsModel?> productsByCat,
      required this.isFilterCat})
      : _products = products,
        _productsByCat = productsByCat;

  final List<ProductsModel?> _products;
  @override
  List<ProductsModel?> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductsModel?> _productsByCat;
  @override
  List<ProductsModel?> get productsByCat {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsByCat);
  }

  @override
  final bool isFilterCat;

  @override
  String toString() {
    return 'ProductsState.loaded(products: $products, productsByCat: $productsByCat, isFilterCat: $isFilterCat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsLoaded &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._productsByCat, _productsByCat) &&
            (identical(other.isFilterCat, isFilterCat) ||
                other.isFilterCat == isFilterCat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productsByCat),
      isFilterCat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsLoadedCopyWith<_$_ProductsLoaded> get copyWith =>
      __$$_ProductsLoadedCopyWithImpl<_$_ProductsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)
        loaded,
    required TResult Function(Object error) error,
  }) {
    return loaded(products, productsByCat, isFilterCat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult? Function(Object error)? error,
  }) {
    return loaded?.call(products, productsByCat, isFilterCat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, productsByCat, isFilterCat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitial value) initial,
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
    required TResult Function(_ProductsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitial value)? initial,
    TResult? Function(_ProductsLoading value)? loading,
    TResult? Function(_ProductsLoaded value)? loaded,
    TResult? Function(_ProductsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitial value)? initial,
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    TResult Function(_ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoaded implements ProductsState {
  const factory _ProductsLoaded(
      {required final List<ProductsModel?> products,
      required final List<ProductsModel?> productsByCat,
      required final bool isFilterCat}) = _$_ProductsLoaded;

  List<ProductsModel?> get products;
  List<ProductsModel?> get productsByCat;
  bool get isFilterCat;
  @JsonKey(ignore: true)
  _$$_ProductsLoadedCopyWith<_$_ProductsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductsErrorCopyWith<$Res> {
  factory _$$_ProductsErrorCopyWith(
          _$_ProductsError value, $Res Function(_$_ProductsError) then) =
      __$$_ProductsErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_ProductsErrorCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$_ProductsError>
    implements _$$_ProductsErrorCopyWith<$Res> {
  __$$_ProductsErrorCopyWithImpl(
      _$_ProductsError _value, $Res Function(_$_ProductsError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ProductsError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ProductsError implements _ProductsError {
  const _$_ProductsError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ProductsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsErrorCopyWith<_$_ProductsError> get copyWith =>
      __$$_ProductsErrorCopyWithImpl<_$_ProductsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)
        loaded,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductsModel?> products,
            List<ProductsModel?> productsByCat, bool isFilterCat)?
        loaded,
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
    required TResult Function(_ProductsInitial value) initial,
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
    required TResult Function(_ProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitial value)? initial,
    TResult? Function(_ProductsLoading value)? loading,
    TResult? Function(_ProductsLoaded value)? loaded,
    TResult? Function(_ProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitial value)? initial,
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    TResult Function(_ProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProductsError implements ProductsState {
  const factory _ProductsError({required final Object error}) =
      _$_ProductsError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_ProductsErrorCopyWith<_$_ProductsError> get copyWith =>
      throw _privateConstructorUsedError;
}
