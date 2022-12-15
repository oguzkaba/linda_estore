// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  Dio get manager => throw _privateConstructorUsedError;
  GlobalKey<ScaffoldState>? get scaffoldKey =>
      throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id)
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id)?
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id)?
        fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEventCopyWith<ProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
  @useResult
  $Res call({Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id});
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsFetchCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$_ProductsFetchCopyWith(
          _$_ProductsFetch value, $Res Function(_$_ProductsFetch) then) =
      __$$_ProductsFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id});
}

/// @nodoc
class __$$_ProductsFetchCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_ProductsFetch>
    implements _$$_ProductsFetchCopyWith<$Res> {
  __$$_ProductsFetchCopyWithImpl(
      _$_ProductsFetch _value, $Res Function(_$_ProductsFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? id = null,
  }) {
    return _then(_$_ProductsFetch(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductsFetch implements _ProductsFetch {
  const _$_ProductsFetch(
      {required this.manager, required this.scaffoldKey, required this.id});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.fetch(manager: $manager, scaffoldKey: $scaffoldKey, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsFetch &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsFetchCopyWith<_$_ProductsFetch> get copyWith =>
      __$$_ProductsFetchCopyWithImpl<_$_ProductsFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id)
        fetch,
  }) {
    return fetch(manager, scaffoldKey, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id)?
        fetch,
  }) {
    return fetch?.call(manager, scaffoldKey, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey, int id)?
        fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(manager, scaffoldKey, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _ProductsFetch implements ProductEvent {
  const factory _ProductsFetch(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      required final int id}) = _$_ProductsFetch;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsFetchCopyWith<_$_ProductsFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductModel product, List<MockReviewsModel> reviews)
        loaded,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductModel product, List<MockReviewsModel> reviews)?
        loaded,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductModel product, List<MockReviewsModel> reviews)?
        loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProductInitialCopyWith<$Res> {
  factory _$$_ProductInitialCopyWith(
          _$_ProductInitial value, $Res Function(_$_ProductInitial) then) =
      __$$_ProductInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductInitialCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductInitial>
    implements _$$_ProductInitialCopyWith<$Res> {
  __$$_ProductInitialCopyWithImpl(
      _$_ProductInitial _value, $Res Function(_$_ProductInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductInitial implements _ProductInitial {
  const _$_ProductInitial();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductModel product, List<MockReviewsModel> reviews)
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
    TResult? Function(ProductModel product, List<MockReviewsModel> reviews)?
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
    TResult Function(ProductModel product, List<MockReviewsModel> reviews)?
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
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProductInitial implements ProductState {
  const factory _ProductInitial() = _$_ProductInitial;
}

/// @nodoc
abstract class _$$_ProductLoadingCopyWith<$Res> {
  factory _$$_ProductLoadingCopyWith(
          _$_ProductLoading value, $Res Function(_$_ProductLoading) then) =
      __$$_ProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductLoading>
    implements _$$_ProductLoadingCopyWith<$Res> {
  __$$_ProductLoadingCopyWithImpl(
      _$_ProductLoading _value, $Res Function(_$_ProductLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductLoading implements _ProductLoading {
  const _$_ProductLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductModel product, List<MockReviewsModel> reviews)
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
    TResult? Function(ProductModel product, List<MockReviewsModel> reviews)?
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
    TResult Function(ProductModel product, List<MockReviewsModel> reviews)?
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
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductLoading implements ProductState {
  const factory _ProductLoading() = _$_ProductLoading;
}

/// @nodoc
abstract class _$$_ProductLoadedCopyWith<$Res> {
  factory _$$_ProductLoadedCopyWith(
          _$_ProductLoaded value, $Res Function(_$_ProductLoaded) then) =
      __$$_ProductLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product, List<MockReviewsModel> reviews});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductLoaded>
    implements _$$_ProductLoadedCopyWith<$Res> {
  __$$_ProductLoadedCopyWithImpl(
      _$_ProductLoaded _value, $Res Function(_$_ProductLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? reviews = null,
  }) {
    return _then(_$_ProductLoaded(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<MockReviewsModel>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_ProductLoaded implements _ProductLoaded {
  const _$_ProductLoaded(
      {required this.product, required final List<MockReviewsModel> reviews})
      : _reviews = reviews;

  @override
  final ProductModel product;
  final List<MockReviewsModel> _reviews;
  @override
  List<MockReviewsModel> get reviews {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ProductState.loaded(product: $product, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductLoaded &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, product, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductLoadedCopyWith<_$_ProductLoaded> get copyWith =>
      __$$_ProductLoadedCopyWithImpl<_$_ProductLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductModel product, List<MockReviewsModel> reviews)
        loaded,
    required TResult Function(Object error) error,
  }) {
    return loaded(product, reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProductModel product, List<MockReviewsModel> reviews)?
        loaded,
    TResult? Function(Object error)? error,
  }) {
    return loaded?.call(product, reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProductModel product, List<MockReviewsModel> reviews)?
        loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(product, reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProductLoaded implements ProductState {
  const factory _ProductLoaded(
      {required final ProductModel product,
      required final List<MockReviewsModel> reviews}) = _$_ProductLoaded;

  ProductModel get product;
  List<MockReviewsModel> get reviews;
  @JsonKey(ignore: true)
  _$$_ProductLoadedCopyWith<_$_ProductLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductErrorCopyWith<$Res> {
  factory _$$_ProductErrorCopyWith(
          _$_ProductError value, $Res Function(_$_ProductError) then) =
      __$$_ProductErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_ProductErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_ProductError>
    implements _$$_ProductErrorCopyWith<$Res> {
  __$$_ProductErrorCopyWithImpl(
      _$_ProductError _value, $Res Function(_$_ProductError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ProductError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_ProductError implements _ProductError {
  const _$_ProductError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ProductState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductErrorCopyWith<_$_ProductError> get copyWith =>
      __$$_ProductErrorCopyWithImpl<_$_ProductError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ProductModel product, List<MockReviewsModel> reviews)
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
    TResult? Function(ProductModel product, List<MockReviewsModel> reviews)?
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
    TResult Function(ProductModel product, List<MockReviewsModel> reviews)?
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
    required TResult Function(_ProductInitial value) initial,
    required TResult Function(_ProductLoading value) loading,
    required TResult Function(_ProductLoaded value) loaded,
    required TResult Function(_ProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductInitial value)? initial,
    TResult? Function(_ProductLoading value)? loading,
    TResult? Function(_ProductLoaded value)? loaded,
    TResult? Function(_ProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductInitial value)? initial,
    TResult Function(_ProductLoading value)? loading,
    TResult Function(_ProductLoaded value)? loaded,
    TResult Function(_ProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProductError implements ProductState {
  const factory _ProductError({required final Object error}) = _$_ProductError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_ProductErrorCopyWith<_$_ProductError> get copyWith =>
      throw _privateConstructorUsedError;
}
