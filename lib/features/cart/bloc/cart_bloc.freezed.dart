// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, AccountBloc accountBloc)
        fetch,
    required TResult Function(CartModel cartModel, int productId) add,
    required TResult Function(CartModel cartModel, int productId) remove,
    required TResult Function(CartModel cartModel, int quantity, int productId)
        changeQty,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult? Function(CartModel cartModel, int productId)? add,
    TResult? Function(CartModel cartModel, int productId)? remove,
    TResult? Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult Function(CartModel cartModel, int productId)? add,
    TResult Function(CartModel cartModel, int productId)? remove,
    TResult Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCart value) fetch,
    required TResult Function(_AddToCart value) add,
    required TResult Function(_RemoveToCart value) remove,
    required TResult Function(_ChangeQtyToCart value) changeQty,
    required TResult Function(_CheckoutToCart value) checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCart value)? fetch,
    TResult? Function(_AddToCart value)? add,
    TResult? Function(_RemoveToCart value)? remove,
    TResult? Function(_ChangeQtyToCart value)? changeQty,
    TResult? Function(_CheckoutToCart value)? checkout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCart value)? fetch,
    TResult Function(_AddToCart value)? add,
    TResult Function(_RemoveToCart value)? remove,
    TResult Function(_ChangeQtyToCart value)? changeQty,
    TResult Function(_CheckoutToCart value)? checkout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCartCopyWith<$Res> {
  factory _$$_FetchCartCopyWith(
          _$_FetchCart value, $Res Function(_$_FetchCart) then) =
      __$$_FetchCartCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      AccountBloc accountBloc});
}

/// @nodoc
class __$$_FetchCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_FetchCart>
    implements _$$_FetchCartCopyWith<$Res> {
  __$$_FetchCartCopyWithImpl(
      _$_FetchCart _value, $Res Function(_$_FetchCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? accountBloc = null,
  }) {
    return _then(_$_FetchCart(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      accountBloc: null == accountBloc
          ? _value.accountBloc
          : accountBloc // ignore: cast_nullable_to_non_nullable
              as AccountBloc,
    ));
  }
}

/// @nodoc

class _$_FetchCart implements _FetchCart {
  const _$_FetchCart(
      {required this.manager,
      required this.scaffoldKey,
      required this.accountBloc});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final AccountBloc accountBloc;

  @override
  String toString() {
    return 'CartEvent.fetch(manager: $manager, scaffoldKey: $scaffoldKey, accountBloc: $accountBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchCart &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.accountBloc, accountBloc) ||
                other.accountBloc == accountBloc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, manager, scaffoldKey, accountBloc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchCartCopyWith<_$_FetchCart> get copyWith =>
      __$$_FetchCartCopyWithImpl<_$_FetchCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, AccountBloc accountBloc)
        fetch,
    required TResult Function(CartModel cartModel, int productId) add,
    required TResult Function(CartModel cartModel, int productId) remove,
    required TResult Function(CartModel cartModel, int quantity, int productId)
        changeQty,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
  }) {
    return fetch(manager, scaffoldKey, accountBloc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult? Function(CartModel cartModel, int productId)? add,
    TResult? Function(CartModel cartModel, int productId)? remove,
    TResult? Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
  }) {
    return fetch?.call(manager, scaffoldKey, accountBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult Function(CartModel cartModel, int productId)? add,
    TResult Function(CartModel cartModel, int productId)? remove,
    TResult Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(manager, scaffoldKey, accountBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCart value) fetch,
    required TResult Function(_AddToCart value) add,
    required TResult Function(_RemoveToCart value) remove,
    required TResult Function(_ChangeQtyToCart value) changeQty,
    required TResult Function(_CheckoutToCart value) checkout,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCart value)? fetch,
    TResult? Function(_AddToCart value)? add,
    TResult? Function(_RemoveToCart value)? remove,
    TResult? Function(_ChangeQtyToCart value)? changeQty,
    TResult? Function(_CheckoutToCart value)? checkout,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCart value)? fetch,
    TResult Function(_AddToCart value)? add,
    TResult Function(_RemoveToCart value)? remove,
    TResult Function(_ChangeQtyToCart value)? changeQty,
    TResult Function(_CheckoutToCart value)? checkout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchCart implements CartEvent {
  const factory _FetchCart(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      required final AccountBloc accountBloc}) = _$_FetchCart;

  Dio get manager;
  GlobalKey<ScaffoldState>? get scaffoldKey;
  AccountBloc get accountBloc;
  @JsonKey(ignore: true)
  _$$_FetchCartCopyWith<_$_FetchCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel, int productId});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddToCart>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? productId = null,
  }) {
    return _then(_$_AddToCart(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({required this.cartModel, required this.productId});

  @override
  final CartModel cartModel;
  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.add(cartModel: $cartModel, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, AccountBloc accountBloc)
        fetch,
    required TResult Function(CartModel cartModel, int productId) add,
    required TResult Function(CartModel cartModel, int productId) remove,
    required TResult Function(CartModel cartModel, int quantity, int productId)
        changeQty,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
  }) {
    return add(cartModel, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult? Function(CartModel cartModel, int productId)? add,
    TResult? Function(CartModel cartModel, int productId)? remove,
    TResult? Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
  }) {
    return add?.call(cartModel, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult Function(CartModel cartModel, int productId)? add,
    TResult Function(CartModel cartModel, int productId)? remove,
    TResult Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(cartModel, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCart value) fetch,
    required TResult Function(_AddToCart value) add,
    required TResult Function(_RemoveToCart value) remove,
    required TResult Function(_ChangeQtyToCart value) changeQty,
    required TResult Function(_CheckoutToCart value) checkout,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCart value)? fetch,
    TResult? Function(_AddToCart value)? add,
    TResult? Function(_RemoveToCart value)? remove,
    TResult? Function(_ChangeQtyToCart value)? changeQty,
    TResult? Function(_CheckoutToCart value)? checkout,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCart value)? fetch,
    TResult Function(_AddToCart value)? add,
    TResult Function(_RemoveToCart value)? remove,
    TResult Function(_ChangeQtyToCart value)? changeQty,
    TResult Function(_CheckoutToCart value)? checkout,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(
      {required final CartModel cartModel,
      required final int productId}) = _$_AddToCart;

  CartModel get cartModel;
  int get productId;
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveToCartCopyWith<$Res> {
  factory _$$_RemoveToCartCopyWith(
          _$_RemoveToCart value, $Res Function(_$_RemoveToCart) then) =
      __$$_RemoveToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel, int productId});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$_RemoveToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemoveToCart>
    implements _$$_RemoveToCartCopyWith<$Res> {
  __$$_RemoveToCartCopyWithImpl(
      _$_RemoveToCart _value, $Res Function(_$_RemoveToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? productId = null,
  }) {
    return _then(_$_RemoveToCart(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$_RemoveToCart implements _RemoveToCart {
  const _$_RemoveToCart({required this.cartModel, required this.productId});

  @override
  final CartModel cartModel;
  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.remove(cartModel: $cartModel, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveToCart &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveToCartCopyWith<_$_RemoveToCart> get copyWith =>
      __$$_RemoveToCartCopyWithImpl<_$_RemoveToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, AccountBloc accountBloc)
        fetch,
    required TResult Function(CartModel cartModel, int productId) add,
    required TResult Function(CartModel cartModel, int productId) remove,
    required TResult Function(CartModel cartModel, int quantity, int productId)
        changeQty,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
  }) {
    return remove(cartModel, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult? Function(CartModel cartModel, int productId)? add,
    TResult? Function(CartModel cartModel, int productId)? remove,
    TResult? Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
  }) {
    return remove?.call(cartModel, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult Function(CartModel cartModel, int productId)? add,
    TResult Function(CartModel cartModel, int productId)? remove,
    TResult Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(cartModel, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCart value) fetch,
    required TResult Function(_AddToCart value) add,
    required TResult Function(_RemoveToCart value) remove,
    required TResult Function(_ChangeQtyToCart value) changeQty,
    required TResult Function(_CheckoutToCart value) checkout,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCart value)? fetch,
    TResult? Function(_AddToCart value)? add,
    TResult? Function(_RemoveToCart value)? remove,
    TResult? Function(_ChangeQtyToCart value)? changeQty,
    TResult? Function(_CheckoutToCart value)? checkout,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCart value)? fetch,
    TResult Function(_AddToCart value)? add,
    TResult Function(_RemoveToCart value)? remove,
    TResult Function(_ChangeQtyToCart value)? changeQty,
    TResult Function(_CheckoutToCart value)? checkout,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _RemoveToCart implements CartEvent {
  const factory _RemoveToCart(
      {required final CartModel cartModel,
      required final int productId}) = _$_RemoveToCart;

  CartModel get cartModel;
  int get productId;
  @JsonKey(ignore: true)
  _$$_RemoveToCartCopyWith<_$_RemoveToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeQtyToCartCopyWith<$Res> {
  factory _$$_ChangeQtyToCartCopyWith(
          _$_ChangeQtyToCart value, $Res Function(_$_ChangeQtyToCart) then) =
      __$$_ChangeQtyToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel, int quantity, int productId});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$_ChangeQtyToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_ChangeQtyToCart>
    implements _$$_ChangeQtyToCartCopyWith<$Res> {
  __$$_ChangeQtyToCartCopyWithImpl(
      _$_ChangeQtyToCart _value, $Res Function(_$_ChangeQtyToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? quantity = null,
    Object? productId = null,
  }) {
    return _then(_$_ChangeQtyToCart(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$_ChangeQtyToCart implements _ChangeQtyToCart {
  const _$_ChangeQtyToCart(
      {required this.cartModel,
      required this.quantity,
      required this.productId});

  @override
  final CartModel cartModel;
  @override
  final int quantity;
  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.changeQty(cartModel: $cartModel, quantity: $quantity, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeQtyToCart &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel, quantity, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeQtyToCartCopyWith<_$_ChangeQtyToCart> get copyWith =>
      __$$_ChangeQtyToCartCopyWithImpl<_$_ChangeQtyToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, AccountBloc accountBloc)
        fetch,
    required TResult Function(CartModel cartModel, int productId) add,
    required TResult Function(CartModel cartModel, int productId) remove,
    required TResult Function(CartModel cartModel, int quantity, int productId)
        changeQty,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
  }) {
    return changeQty(cartModel, quantity, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult? Function(CartModel cartModel, int productId)? add,
    TResult? Function(CartModel cartModel, int productId)? remove,
    TResult? Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
  }) {
    return changeQty?.call(cartModel, quantity, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult Function(CartModel cartModel, int productId)? add,
    TResult Function(CartModel cartModel, int productId)? remove,
    TResult Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    required TResult orElse(),
  }) {
    if (changeQty != null) {
      return changeQty(cartModel, quantity, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCart value) fetch,
    required TResult Function(_AddToCart value) add,
    required TResult Function(_RemoveToCart value) remove,
    required TResult Function(_ChangeQtyToCart value) changeQty,
    required TResult Function(_CheckoutToCart value) checkout,
  }) {
    return changeQty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCart value)? fetch,
    TResult? Function(_AddToCart value)? add,
    TResult? Function(_RemoveToCart value)? remove,
    TResult? Function(_ChangeQtyToCart value)? changeQty,
    TResult? Function(_CheckoutToCart value)? checkout,
  }) {
    return changeQty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCart value)? fetch,
    TResult Function(_AddToCart value)? add,
    TResult Function(_RemoveToCart value)? remove,
    TResult Function(_ChangeQtyToCart value)? changeQty,
    TResult Function(_CheckoutToCart value)? checkout,
    required TResult orElse(),
  }) {
    if (changeQty != null) {
      return changeQty(this);
    }
    return orElse();
  }
}

abstract class _ChangeQtyToCart implements CartEvent {
  const factory _ChangeQtyToCart(
      {required final CartModel cartModel,
      required final int quantity,
      required final int productId}) = _$_ChangeQtyToCart;

  CartModel get cartModel;
  int get quantity;
  int get productId;
  @JsonKey(ignore: true)
  _$$_ChangeQtyToCartCopyWith<_$_ChangeQtyToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckoutToCartCopyWith<$Res> {
  factory _$$_CheckoutToCartCopyWith(
          _$_CheckoutToCart value, $Res Function(_$_CheckoutToCart) then) =
      __$$_CheckoutToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckoutStateEnum checkoutState});
}

/// @nodoc
class __$$_CheckoutToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_CheckoutToCart>
    implements _$$_CheckoutToCartCopyWith<$Res> {
  __$$_CheckoutToCartCopyWithImpl(
      _$_CheckoutToCart _value, $Res Function(_$_CheckoutToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkoutState = null,
  }) {
    return _then(_$_CheckoutToCart(
      checkoutState: null == checkoutState
          ? _value.checkoutState
          : checkoutState // ignore: cast_nullable_to_non_nullable
              as CheckoutStateEnum,
    ));
  }
}

/// @nodoc

class _$_CheckoutToCart implements _CheckoutToCart {
  const _$_CheckoutToCart({required this.checkoutState});

  @override
  final CheckoutStateEnum checkoutState;

  @override
  String toString() {
    return 'CartEvent.checkout(checkoutState: $checkoutState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckoutToCart &&
            (identical(other.checkoutState, checkoutState) ||
                other.checkoutState == checkoutState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkoutState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutToCartCopyWith<_$_CheckoutToCart> get copyWith =>
      __$$_CheckoutToCartCopyWithImpl<_$_CheckoutToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, AccountBloc accountBloc)
        fetch,
    required TResult Function(CartModel cartModel, int productId) add,
    required TResult Function(CartModel cartModel, int productId) remove,
    required TResult Function(CartModel cartModel, int quantity, int productId)
        changeQty,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
  }) {
    return checkout(checkoutState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult? Function(CartModel cartModel, int productId)? add,
    TResult? Function(CartModel cartModel, int productId)? remove,
    TResult? Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
  }) {
    return checkout?.call(checkoutState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            AccountBloc accountBloc)?
        fetch,
    TResult Function(CartModel cartModel, int productId)? add,
    TResult Function(CartModel cartModel, int productId)? remove,
    TResult Function(CartModel cartModel, int quantity, int productId)?
        changeQty,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(checkoutState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCart value) fetch,
    required TResult Function(_AddToCart value) add,
    required TResult Function(_RemoveToCart value) remove,
    required TResult Function(_ChangeQtyToCart value) changeQty,
    required TResult Function(_CheckoutToCart value) checkout,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCart value)? fetch,
    TResult? Function(_AddToCart value)? add,
    TResult? Function(_RemoveToCart value)? remove,
    TResult? Function(_ChangeQtyToCart value)? changeQty,
    TResult? Function(_CheckoutToCart value)? checkout,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCart value)? fetch,
    TResult Function(_AddToCart value)? add,
    TResult Function(_RemoveToCart value)? remove,
    TResult Function(_ChangeQtyToCart value)? changeQty,
    TResult Function(_CheckoutToCart value)? checkout,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class _CheckoutToCart implements CartEvent {
  const factory _CheckoutToCart(
      {required final CheckoutStateEnum checkoutState}) = _$_CheckoutToCart;

  CheckoutStateEnum get checkoutState;
  @JsonKey(ignore: true)
  _$$_CheckoutToCartCopyWith<_$_CheckoutToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CartInitialCopyWith<$Res> {
  factory _$$_CartInitialCopyWith(
          _$_CartInitial value, $Res Function(_$_CartInitial) then) =
      __$$_CartInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartInitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartInitial>
    implements _$$_CartInitialCopyWith<$Res> {
  __$$_CartInitialCopyWithImpl(
      _$_CartInitial _value, $Res Function(_$_CartInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CartInitial implements _CartInitial {
  const _$_CartInitial();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CartInitial implements CartState {
  const factory _CartInitial() = _$_CartInitial;
}

/// @nodoc
abstract class _$$CartLoadingCopyWith<$Res> {
  factory _$$CartLoadingCopyWith(
          _$CartLoading value, $Res Function(_$CartLoading) then) =
      __$$CartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoading>
    implements _$$CartLoadingCopyWith<$Res> {
  __$$CartLoadingCopyWithImpl(
      _$CartLoading _value, $Res Function(_$CartLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoading implements CartLoading {
  const _$CartLoading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoading implements CartState {
  const factory CartLoading() = _$CartLoading;
}

/// @nodoc
abstract class _$$_CartLoadedCopyWith<$Res> {
  factory _$$_CartLoadedCopyWith(
          _$_CartLoaded value, $Res Function(_$_CartLoaded) then) =
      __$$_CartLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartModel> cartModel});
}

/// @nodoc
class __$$_CartLoadedCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartLoaded>
    implements _$$_CartLoadedCopyWith<$Res> {
  __$$_CartLoadedCopyWithImpl(
      _$_CartLoaded _value, $Res Function(_$_CartLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
  }) {
    return _then(_$_CartLoaded(
      cartModel: null == cartModel
          ? _value._cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_CartLoaded implements _CartLoaded {
  const _$_CartLoaded({required final List<CartModel> cartModel})
      : _cartModel = cartModel;

  final List<CartModel> _cartModel;
  @override
  List<CartModel> get cartModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartModel);
  }

  @override
  String toString() {
    return 'CartState.loaded(cartModel: $cartModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartLoaded &&
            const DeepCollectionEquality()
                .equals(other._cartModel, _cartModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartLoadedCopyWith<_$_CartLoaded> get copyWith =>
      __$$_CartLoadedCopyWithImpl<_$_CartLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return loaded(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return loaded?.call(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CartLoaded implements CartState {
  const factory _CartLoaded({required final List<CartModel> cartModel}) =
      _$_CartLoaded;

  List<CartModel> get cartModel;
  @JsonKey(ignore: true)
  _$$_CartLoadedCopyWith<_$_CartLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartAddCopyWith<$Res> {
  factory _$$_CartAddCopyWith(
          _$_CartAdd value, $Res Function(_$_CartAdd) then) =
      __$$_CartAddCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartModel> cartModel});
}

/// @nodoc
class __$$_CartAddCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartAdd>
    implements _$$_CartAddCopyWith<$Res> {
  __$$_CartAddCopyWithImpl(_$_CartAdd _value, $Res Function(_$_CartAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
  }) {
    return _then(_$_CartAdd(
      cartModel: null == cartModel
          ? _value._cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_CartAdd implements _CartAdd {
  const _$_CartAdd({required final List<CartModel> cartModel})
      : _cartModel = cartModel;

  final List<CartModel> _cartModel;
  @override
  List<CartModel> get cartModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartModel);
  }

  @override
  String toString() {
    return 'CartState.add(cartModel: $cartModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartAdd &&
            const DeepCollectionEquality()
                .equals(other._cartModel, _cartModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartAddCopyWith<_$_CartAdd> get copyWith =>
      __$$_CartAddCopyWithImpl<_$_CartAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return add(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return add?.call(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(cartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _CartAdd implements CartState {
  const factory _CartAdd({required final List<CartModel> cartModel}) =
      _$_CartAdd;

  List<CartModel> get cartModel;
  @JsonKey(ignore: true)
  _$$_CartAddCopyWith<_$_CartAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartRemoveCopyWith<$Res> {
  factory _$$_CartRemoveCopyWith(
          _$_CartRemove value, $Res Function(_$_CartRemove) then) =
      __$$_CartRemoveCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartModel> cartModel});
}

/// @nodoc
class __$$_CartRemoveCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartRemove>
    implements _$$_CartRemoveCopyWith<$Res> {
  __$$_CartRemoveCopyWithImpl(
      _$_CartRemove _value, $Res Function(_$_CartRemove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
  }) {
    return _then(_$_CartRemove(
      cartModel: null == cartModel
          ? _value._cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_CartRemove implements _CartRemove {
  const _$_CartRemove({required final List<CartModel> cartModel})
      : _cartModel = cartModel;

  final List<CartModel> _cartModel;
  @override
  List<CartModel> get cartModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartModel);
  }

  @override
  String toString() {
    return 'CartState.remove(cartModel: $cartModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartRemove &&
            const DeepCollectionEquality()
                .equals(other._cartModel, _cartModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartRemoveCopyWith<_$_CartRemove> get copyWith =>
      __$$_CartRemoveCopyWithImpl<_$_CartRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return remove(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return remove?.call(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(cartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _CartRemove implements CartState {
  const factory _CartRemove({required final List<CartModel> cartModel}) =
      _$_CartRemove;

  List<CartModel> get cartModel;
  @JsonKey(ignore: true)
  _$$_CartRemoveCopyWith<_$_CartRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartCheckoutCopyWith<$Res> {
  factory _$$_CartCheckoutCopyWith(
          _$_CartCheckout value, $Res Function(_$_CartCheckout) then) =
      __$$_CartCheckoutCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckoutStateEnum checkoutState});
}

/// @nodoc
class __$$_CartCheckoutCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartCheckout>
    implements _$$_CartCheckoutCopyWith<$Res> {
  __$$_CartCheckoutCopyWithImpl(
      _$_CartCheckout _value, $Res Function(_$_CartCheckout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkoutState = null,
  }) {
    return _then(_$_CartCheckout(
      checkoutState: null == checkoutState
          ? _value.checkoutState
          : checkoutState // ignore: cast_nullable_to_non_nullable
              as CheckoutStateEnum,
    ));
  }
}

/// @nodoc

class _$_CartCheckout implements _CartCheckout {
  const _$_CartCheckout({required this.checkoutState});

  @override
  final CheckoutStateEnum checkoutState;

  @override
  String toString() {
    return 'CartState.checkout(checkoutState: $checkoutState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartCheckout &&
            (identical(other.checkoutState, checkoutState) ||
                other.checkoutState == checkoutState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkoutState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartCheckoutCopyWith<_$_CartCheckout> get copyWith =>
      __$$_CartCheckoutCopyWithImpl<_$_CartCheckout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return checkout(checkoutState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return checkout?.call(checkoutState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(checkoutState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class _CartCheckout implements CartState {
  const factory _CartCheckout(
      {required final CheckoutStateEnum checkoutState}) = _$_CartCheckout;

  CheckoutStateEnum get checkoutState;
  @JsonKey(ignore: true)
  _$$_CartCheckoutCopyWith<_$_CartCheckout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CartErrorCopyWith<$Res> {
  factory _$$_CartErrorCopyWith(
          _$_CartError value, $Res Function(_$_CartError) then) =
      __$$_CartErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_CartErrorCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_CartError>
    implements _$$_CartErrorCopyWith<$Res> {
  __$$_CartErrorCopyWithImpl(
      _$_CartError _value, $Res Function(_$_CartError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_CartError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_CartError implements _CartError {
  const _$_CartError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'CartState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartErrorCopyWith<_$_CartError> get copyWith =>
      __$$_CartErrorCopyWithImpl<_$_CartError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartModel) loaded,
    required TResult Function(List<CartModel> cartModel) add,
    required TResult Function(List<CartModel> cartModel) remove,
    required TResult Function(CheckoutStateEnum checkoutState) checkout,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartModel)? loaded,
    TResult? Function(List<CartModel> cartModel)? add,
    TResult? Function(List<CartModel> cartModel)? remove,
    TResult? Function(CheckoutStateEnum checkoutState)? checkout,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartModel)? loaded,
    TResult Function(List<CartModel> cartModel)? add,
    TResult Function(List<CartModel> cartModel)? remove,
    TResult Function(CheckoutStateEnum checkoutState)? checkout,
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
    required TResult Function(_CartInitial value) initial,
    required TResult Function(CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
    required TResult Function(_CartAdd value) add,
    required TResult Function(_CartRemove value) remove,
    required TResult Function(_CartCheckout value) checkout,
    required TResult Function(_CartError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CartInitial value)? initial,
    TResult? Function(CartLoading value)? loading,
    TResult? Function(_CartLoaded value)? loaded,
    TResult? Function(_CartAdd value)? add,
    TResult? Function(_CartRemove value)? remove,
    TResult? Function(_CartCheckout value)? checkout,
    TResult? Function(_CartError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartInitial value)? initial,
    TResult Function(CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    TResult Function(_CartAdd value)? add,
    TResult Function(_CartRemove value)? remove,
    TResult Function(_CartCheckout value)? checkout,
    TResult Function(_CartError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CartError implements CartState {
  const factory _CartError({required final Object error}) = _$_CartError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_CartErrorCopyWith<_$_CartError> get copyWith =>
      throw _privateConstructorUsedError;
}
