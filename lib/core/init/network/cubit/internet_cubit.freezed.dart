// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isOnline) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isOnline)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isOnline)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckInternet value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CheckInternet value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckInternet value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res, InternetState>;
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res, $Val extends InternetState>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'InternetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isOnline) check,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isOnline)? check,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isOnline)? check,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckInternet value) check,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CheckInternet value)? check,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckInternet value)? check,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements InternetState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_CheckInternetCopyWith<$Res> {
  factory _$$_CheckInternetCopyWith(
          _$_CheckInternet value, $Res Function(_$_CheckInternet) then) =
      __$$_CheckInternetCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOnline});
}

/// @nodoc
class __$$_CheckInternetCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res, _$_CheckInternet>
    implements _$$_CheckInternetCopyWith<$Res> {
  __$$_CheckInternetCopyWithImpl(
      _$_CheckInternet _value, $Res Function(_$_CheckInternet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
  }) {
    return _then(_$_CheckInternet(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckInternet implements _CheckInternet {
  const _$_CheckInternet({required this.isOnline});

  @override
  final bool isOnline;

  @override
  String toString() {
    return 'InternetState.check(isOnline: $isOnline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckInternet &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckInternetCopyWith<_$_CheckInternet> get copyWith =>
      __$$_CheckInternetCopyWithImpl<_$_CheckInternet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isOnline) check,
  }) {
    return check(isOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isOnline)? check,
  }) {
    return check?.call(isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isOnline)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_CheckInternet value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CheckInternet value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_CheckInternet value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _CheckInternet implements InternetState {
  const factory _CheckInternet({required final bool isOnline}) =
      _$_CheckInternet;

  bool get isOnline;
  @JsonKey(ignore: true)
  _$$_CheckInternetCopyWith<_$_CheckInternet> get copyWith =>
      throw _privateConstructorUsedError;
}
