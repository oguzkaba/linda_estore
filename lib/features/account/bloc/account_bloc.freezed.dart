// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  Dio get manager => throw _privateConstructorUsedError;
  GlobalKey<ScaffoldState>? get scaffoldKey =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)?
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEventCopyWith<AccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
  @useResult
  $Res call({Dio manager, GlobalKey<ScaffoldState>? scaffoldKey});
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountFetchCopyWith<$Res>
    implements $AccountEventCopyWith<$Res> {
  factory _$$_AccountFetchCopyWith(
          _$_AccountFetch value, $Res Function(_$_AccountFetch) then) =
      __$$_AccountFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dio manager, GlobalKey<ScaffoldState>? scaffoldKey});
}

/// @nodoc
class __$$_AccountFetchCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountFetch>
    implements _$$_AccountFetchCopyWith<$Res> {
  __$$_AccountFetchCopyWithImpl(
      _$_AccountFetch _value, $Res Function(_$_AccountFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
  }) {
    return _then(_$_AccountFetch(
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

class _$_AccountFetch implements _AccountFetch {
  const _$_AccountFetch({required this.manager, required this.scaffoldKey});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'AccountEvent.fetch(manager: $manager, scaffoldKey: $scaffoldKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountFetch &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountFetchCopyWith<_$_AccountFetch> get copyWith =>
      __$$_AccountFetchCopyWithImpl<_$_AccountFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)
        fetch,
  }) {
    return fetch(manager, scaffoldKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)?
        fetch,
  }) {
    return fetch?.call(manager, scaffoldKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey)? fetch,
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
    required TResult Function(_AccountFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _AccountFetch implements AccountEvent {
  const factory _AccountFetch(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey}) = _$_AccountFetch;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  @JsonKey(ignore: true)
  _$$_AccountFetchCopyWith<_$_AccountFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) loaded,
    required TResult Function(Object error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? loaded,
    TResult? Function(Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountInitial value) initial,
    required TResult Function(_AccountLoading value) loading,
    required TResult Function(_AccountLoaded value) loaded,
    required TResult Function(_AccountError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountInitial value)? initial,
    TResult? Function(_AccountLoading value)? loading,
    TResult? Function(_AccountLoaded value)? loaded,
    TResult? Function(_AccountError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountInitial value)? initial,
    TResult Function(_AccountLoading value)? loading,
    TResult Function(_AccountLoaded value)? loaded,
    TResult Function(_AccountError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountInitialCopyWith<$Res> {
  factory _$$_AccountInitialCopyWith(
          _$_AccountInitial value, $Res Function(_$_AccountInitial) then) =
      __$$_AccountInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountInitialCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountInitial>
    implements _$$_AccountInitialCopyWith<$Res> {
  __$$_AccountInitialCopyWithImpl(
      _$_AccountInitial _value, $Res Function(_$_AccountInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountInitial implements _AccountInitial {
  const _$_AccountInitial();

  @override
  String toString() {
    return 'AccountState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) loaded,
    required TResult Function(Object error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? loaded,
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
    required TResult Function(_AccountInitial value) initial,
    required TResult Function(_AccountLoading value) loading,
    required TResult Function(_AccountLoaded value) loaded,
    required TResult Function(_AccountError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountInitial value)? initial,
    TResult? Function(_AccountLoading value)? loading,
    TResult? Function(_AccountLoaded value)? loaded,
    TResult? Function(_AccountError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountInitial value)? initial,
    TResult Function(_AccountLoading value)? loading,
    TResult Function(_AccountLoaded value)? loaded,
    TResult Function(_AccountError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AccountInitial implements AccountState {
  const factory _AccountInitial() = _$_AccountInitial;
}

/// @nodoc
abstract class _$$_AccountLoadingCopyWith<$Res> {
  factory _$$_AccountLoadingCopyWith(
          _$_AccountLoading value, $Res Function(_$_AccountLoading) then) =
      __$$_AccountLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountLoadingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountLoading>
    implements _$$_AccountLoadingCopyWith<$Res> {
  __$$_AccountLoadingCopyWithImpl(
      _$_AccountLoading _value, $Res Function(_$_AccountLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountLoading implements _AccountLoading {
  const _$_AccountLoading();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) loaded,
    required TResult Function(Object error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? loaded,
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
    required TResult Function(_AccountInitial value) initial,
    required TResult Function(_AccountLoading value) loading,
    required TResult Function(_AccountLoaded value) loaded,
    required TResult Function(_AccountError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountInitial value)? initial,
    TResult? Function(_AccountLoading value)? loading,
    TResult? Function(_AccountLoaded value)? loaded,
    TResult? Function(_AccountError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountInitial value)? initial,
    TResult Function(_AccountLoading value)? loading,
    TResult Function(_AccountLoaded value)? loaded,
    TResult Function(_AccountError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AccountLoading implements AccountState {
  const factory _AccountLoading() = _$_AccountLoading;
}

/// @nodoc
abstract class _$$_AccountLoadedCopyWith<$Res> {
  factory _$$_AccountLoadedCopyWith(
          _$_AccountLoaded value, $Res Function(_$_AccountLoaded) then) =
      __$$_AccountLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountModel accountModel});

  $AccountModelCopyWith<$Res> get accountModel;
}

/// @nodoc
class __$$_AccountLoadedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountLoaded>
    implements _$$_AccountLoadedCopyWith<$Res> {
  __$$_AccountLoadedCopyWithImpl(
      _$_AccountLoaded _value, $Res Function(_$_AccountLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountModel = null,
  }) {
    return _then(_$_AccountLoaded(
      accountModel: null == accountModel
          ? _value.accountModel
          : accountModel // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get accountModel {
    return $AccountModelCopyWith<$Res>(_value.accountModel, (value) {
      return _then(_value.copyWith(accountModel: value));
    });
  }
}

/// @nodoc

class _$_AccountLoaded implements _AccountLoaded {
  const _$_AccountLoaded({required this.accountModel});

  @override
  final AccountModel accountModel;

  @override
  String toString() {
    return 'AccountState.loaded(accountModel: $accountModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountLoaded &&
            (identical(other.accountModel, accountModel) ||
                other.accountModel == accountModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountLoadedCopyWith<_$_AccountLoaded> get copyWith =>
      __$$_AccountLoadedCopyWithImpl<_$_AccountLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) loaded,
    required TResult Function(Object error) error,
  }) {
    return loaded(accountModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return loaded?.call(accountModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? loaded,
    TResult Function(Object error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(accountModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountInitial value) initial,
    required TResult Function(_AccountLoading value) loading,
    required TResult Function(_AccountLoaded value) loaded,
    required TResult Function(_AccountError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountInitial value)? initial,
    TResult? Function(_AccountLoading value)? loading,
    TResult? Function(_AccountLoaded value)? loaded,
    TResult? Function(_AccountError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountInitial value)? initial,
    TResult Function(_AccountLoading value)? loading,
    TResult Function(_AccountLoaded value)? loaded,
    TResult Function(_AccountError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AccountLoaded implements AccountState {
  const factory _AccountLoaded({required final AccountModel accountModel}) =
      _$_AccountLoaded;

  AccountModel get accountModel;
  @JsonKey(ignore: true)
  _$$_AccountLoadedCopyWith<_$_AccountLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountErrorCopyWith<$Res> {
  factory _$$_AccountErrorCopyWith(
          _$_AccountError value, $Res Function(_$_AccountError) then) =
      __$$_AccountErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_AccountErrorCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$_AccountError>
    implements _$$_AccountErrorCopyWith<$Res> {
  __$$_AccountErrorCopyWithImpl(
      _$_AccountError _value, $Res Function(_$_AccountError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AccountError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_AccountError implements _AccountError {
  const _$_AccountError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'AccountState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountErrorCopyWith<_$_AccountError> get copyWith =>
      __$$_AccountErrorCopyWithImpl<_$_AccountError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) loaded,
    required TResult Function(Object error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? loaded,
    TResult? Function(Object error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? loaded,
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
    required TResult Function(_AccountInitial value) initial,
    required TResult Function(_AccountLoading value) loading,
    required TResult Function(_AccountLoaded value) loaded,
    required TResult Function(_AccountError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountInitial value)? initial,
    TResult? Function(_AccountLoading value)? loading,
    TResult? Function(_AccountLoaded value)? loaded,
    TResult? Function(_AccountError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountInitial value)? initial,
    TResult Function(_AccountLoading value)? loading,
    TResult Function(_AccountLoaded value)? loaded,
    TResult Function(_AccountError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AccountError implements AccountState {
  const factory _AccountError({required final Object error}) = _$_AccountError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_AccountErrorCopyWith<_$_AccountError> get copyWith =>
      throw _privateConstructorUsedError;
}
