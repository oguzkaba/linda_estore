// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  Dio get manager => throw _privateConstructorUsedError;
  GlobalKey<ScaffoldState>? get scaffoldKey =>
      throw _privateConstructorUsedError;
  BuildContext? get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
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
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthanticateCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthanticateCopyWith(
          _$_Authanticate value, $Res Function(_$_Authanticate) then) =
      __$$_AuthanticateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context,
      String? token});
}

/// @nodoc
class __$$_AuthanticateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Authanticate>
    implements _$$_AuthanticateCopyWith<$Res> {
  __$$_AuthanticateCopyWithImpl(
      _$_Authanticate _value, $Res Function(_$_Authanticate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_Authanticate(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Authanticate implements _Authanticate {
  const _$_Authanticate(
      {required this.manager,
      required this.scaffoldKey,
      this.context,
      required this.token});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthEvent.authanticate(manager: $manager, scaffoldKey: $scaffoldKey, context: $context, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authanticate &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, manager, scaffoldKey, context, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthanticateCopyWith<_$_Authanticate> get copyWith =>
      __$$_AuthanticateCopyWithImpl<_$_Authanticate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return authanticate(manager, scaffoldKey, context, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return authanticate?.call(manager, scaffoldKey, context, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (authanticate != null) {
      return authanticate(manager, scaffoldKey, context, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return authanticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return authanticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (authanticate != null) {
      return authanticate(this);
    }
    return orElse();
  }
}

abstract class _Authanticate implements AuthEvent {
  const factory _Authanticate(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context,
      required final String? token}) = _$_Authanticate;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthanticateCopyWith<_$_Authanticate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$AuthLoginCopyWith(
          _$AuthLogin value, $Res Function(_$AuthLogin) then) =
      __$$AuthLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context,
      LoginRequestModel loginRequestModel,
      NetworkErrorModel? networkErrorModel});

  $LoginRequestModelCopyWith<$Res> get loginRequestModel;
}

/// @nodoc
class __$$AuthLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthLogin>
    implements _$$AuthLoginCopyWith<$Res> {
  __$$AuthLoginCopyWithImpl(
      _$AuthLogin _value, $Res Function(_$AuthLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
    Object? loginRequestModel = null,
    Object? networkErrorModel = freezed,
  }) {
    return _then(_$AuthLogin(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      loginRequestModel: null == loginRequestModel
          ? _value.loginRequestModel
          : loginRequestModel // ignore: cast_nullable_to_non_nullable
              as LoginRequestModel,
      networkErrorModel: freezed == networkErrorModel
          ? _value.networkErrorModel
          : networkErrorModel // ignore: cast_nullable_to_non_nullable
              as NetworkErrorModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginRequestModelCopyWith<$Res> get loginRequestModel {
    return $LoginRequestModelCopyWith<$Res>(_value.loginRequestModel, (value) {
      return _then(_value.copyWith(loginRequestModel: value));
    });
  }
}

/// @nodoc

class _$AuthLogin implements AuthLogin {
  const _$AuthLogin(
      {required this.manager,
      required this.scaffoldKey,
      this.context,
      required this.loginRequestModel,
      this.networkErrorModel});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;
  @override
  final LoginRequestModel loginRequestModel;
  @override
  final NetworkErrorModel? networkErrorModel;

  @override
  String toString() {
    return 'AuthEvent.login(manager: $manager, scaffoldKey: $scaffoldKey, context: $context, loginRequestModel: $loginRequestModel, networkErrorModel: $networkErrorModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLogin &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.loginRequestModel, loginRequestModel) ||
                other.loginRequestModel == loginRequestModel) &&
            (identical(other.networkErrorModel, networkErrorModel) ||
                other.networkErrorModel == networkErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context,
      loginRequestModel, networkErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoginCopyWith<_$AuthLogin> get copyWith =>
      __$$AuthLoginCopyWithImpl<_$AuthLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return login(
        manager, scaffoldKey, context, loginRequestModel, networkErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return login?.call(
        manager, scaffoldKey, context, loginRequestModel, networkErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(
          manager, scaffoldKey, context, loginRequestModel, networkErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthLogin implements AuthEvent {
  const factory AuthLogin(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context,
      required final LoginRequestModel loginRequestModel,
      final NetworkErrorModel? networkErrorModel}) = _$AuthLogin;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  LoginRequestModel get loginRequestModel;
  NetworkErrorModel? get networkErrorModel;
  @override
  @JsonKey(ignore: true)
  _$$AuthLoginCopyWith<_$AuthLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthRegisterCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$AuthRegisterCopyWith(
          _$AuthRegister value, $Res Function(_$AuthRegister) then) =
      __$$AuthRegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context,
      RegisterRequestModel registerRequestModel,
      NetworkErrorModel? networkErrorModel});

  $RegisterRequestModelCopyWith<$Res> get registerRequestModel;
}

/// @nodoc
class __$$AuthRegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthRegister>
    implements _$$AuthRegisterCopyWith<$Res> {
  __$$AuthRegisterCopyWithImpl(
      _$AuthRegister _value, $Res Function(_$AuthRegister) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
    Object? registerRequestModel = null,
    Object? networkErrorModel = freezed,
  }) {
    return _then(_$AuthRegister(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
      registerRequestModel: null == registerRequestModel
          ? _value.registerRequestModel
          : registerRequestModel // ignore: cast_nullable_to_non_nullable
              as RegisterRequestModel,
      networkErrorModel: freezed == networkErrorModel
          ? _value.networkErrorModel
          : networkErrorModel // ignore: cast_nullable_to_non_nullable
              as NetworkErrorModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterRequestModelCopyWith<$Res> get registerRequestModel {
    return $RegisterRequestModelCopyWith<$Res>(_value.registerRequestModel,
        (value) {
      return _then(_value.copyWith(registerRequestModel: value));
    });
  }
}

/// @nodoc

class _$AuthRegister implements AuthRegister {
  const _$AuthRegister(
      {required this.manager,
      required this.scaffoldKey,
      this.context,
      required this.registerRequestModel,
      this.networkErrorModel});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;
  @override
  final RegisterRequestModel registerRequestModel;
  @override
  final NetworkErrorModel? networkErrorModel;

  @override
  String toString() {
    return 'AuthEvent.register(manager: $manager, scaffoldKey: $scaffoldKey, context: $context, registerRequestModel: $registerRequestModel, networkErrorModel: $networkErrorModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthRegister &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.registerRequestModel, registerRequestModel) ||
                other.registerRequestModel == registerRequestModel) &&
            (identical(other.networkErrorModel, networkErrorModel) ||
                other.networkErrorModel == networkErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context,
      registerRequestModel, networkErrorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthRegisterCopyWith<_$AuthRegister> get copyWith =>
      __$$AuthRegisterCopyWithImpl<_$AuthRegister>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return register(
        manager, scaffoldKey, context, registerRequestModel, networkErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return register?.call(
        manager, scaffoldKey, context, registerRequestModel, networkErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(manager, scaffoldKey, context, registerRequestModel,
          networkErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class AuthRegister implements AuthEvent {
  const factory AuthRegister(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context,
      required final RegisterRequestModel registerRequestModel,
      final NetworkErrorModel? networkErrorModel}) = _$AuthRegister;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  RegisterRequestModel get registerRequestModel;
  NetworkErrorModel? get networkErrorModel;
  @override
  @JsonKey(ignore: true)
  _$$AuthRegisterCopyWith<_$AuthRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLoginWithGoogleCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthLoginWithGoogleCopyWith(_$_AuthLoginWithGoogle value,
          $Res Function(_$_AuthLoginWithGoogle) then) =
      __$$_AuthLoginWithGoogleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context});
}

/// @nodoc
class __$$_AuthLoginWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthLoginWithGoogle>
    implements _$$_AuthLoginWithGoogleCopyWith<$Res> {
  __$$_AuthLoginWithGoogleCopyWithImpl(_$_AuthLoginWithGoogle _value,
      $Res Function(_$_AuthLoginWithGoogle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_AuthLoginWithGoogle(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$_AuthLoginWithGoogle implements _AuthLoginWithGoogle {
  const _$_AuthLoginWithGoogle(
      {required this.manager, required this.scaffoldKey, this.context});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle(manager: $manager, scaffoldKey: $scaffoldKey, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLoginWithGoogle &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLoginWithGoogleCopyWith<_$_AuthLoginWithGoogle> get copyWith =>
      __$$_AuthLoginWithGoogleCopyWithImpl<_$_AuthLoginWithGoogle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return loginWithGoogle(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return loginWithGoogle?.call(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(manager, scaffoldKey, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _AuthLoginWithGoogle implements AuthEvent {
  const factory _AuthLoginWithGoogle(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context}) = _$_AuthLoginWithGoogle;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_AuthLoginWithGoogleCopyWith<_$_AuthLoginWithGoogle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLoginWithAppleCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthLoginWithAppleCopyWith(_$_AuthLoginWithApple value,
          $Res Function(_$_AuthLoginWithApple) then) =
      __$$_AuthLoginWithAppleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context});
}

/// @nodoc
class __$$_AuthLoginWithAppleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthLoginWithApple>
    implements _$$_AuthLoginWithAppleCopyWith<$Res> {
  __$$_AuthLoginWithAppleCopyWithImpl(
      _$_AuthLoginWithApple _value, $Res Function(_$_AuthLoginWithApple) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_AuthLoginWithApple(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$_AuthLoginWithApple implements _AuthLoginWithApple {
  const _$_AuthLoginWithApple(
      {required this.manager, required this.scaffoldKey, this.context});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'AuthEvent.loginWithApple(manager: $manager, scaffoldKey: $scaffoldKey, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLoginWithApple &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLoginWithAppleCopyWith<_$_AuthLoginWithApple> get copyWith =>
      __$$_AuthLoginWithAppleCopyWithImpl<_$_AuthLoginWithApple>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return loginWithApple(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return loginWithApple?.call(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple(manager, scaffoldKey, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return loginWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return loginWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple(this);
    }
    return orElse();
  }
}

abstract class _AuthLoginWithApple implements AuthEvent {
  const factory _AuthLoginWithApple(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context}) = _$_AuthLoginWithApple;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_AuthLoginWithAppleCopyWith<_$_AuthLoginWithApple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLoginWithFacebookCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthLoginWithFacebookCopyWith(_$_AuthLoginWithFacebook value,
          $Res Function(_$_AuthLoginWithFacebook) then) =
      __$$_AuthLoginWithFacebookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context});
}

/// @nodoc
class __$$_AuthLoginWithFacebookCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthLoginWithFacebook>
    implements _$$_AuthLoginWithFacebookCopyWith<$Res> {
  __$$_AuthLoginWithFacebookCopyWithImpl(_$_AuthLoginWithFacebook _value,
      $Res Function(_$_AuthLoginWithFacebook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_AuthLoginWithFacebook(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$_AuthLoginWithFacebook implements _AuthLoginWithFacebook {
  const _$_AuthLoginWithFacebook(
      {required this.manager, required this.scaffoldKey, this.context});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'AuthEvent.loginWithFacebook(manager: $manager, scaffoldKey: $scaffoldKey, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLoginWithFacebook &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLoginWithFacebookCopyWith<_$_AuthLoginWithFacebook> get copyWith =>
      __$$_AuthLoginWithFacebookCopyWithImpl<_$_AuthLoginWithFacebook>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return loginWithFacebook(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return loginWithFacebook?.call(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(manager, scaffoldKey, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return loginWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return loginWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (loginWithFacebook != null) {
      return loginWithFacebook(this);
    }
    return orElse();
  }
}

abstract class _AuthLoginWithFacebook implements AuthEvent {
  const factory _AuthLoginWithFacebook(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context}) = _$_AuthLoginWithFacebook;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_AuthLoginWithFacebookCopyWith<_$_AuthLoginWithFacebook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthLogOutCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthLogOutCopyWith(
          _$_AuthLogOut value, $Res Function(_$_AuthLogOut) then) =
      __$$_AuthLogOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context});
}

/// @nodoc
class __$$_AuthLogOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthLogOut>
    implements _$$_AuthLogOutCopyWith<$Res> {
  __$$_AuthLogOutCopyWithImpl(
      _$_AuthLogOut _value, $Res Function(_$_AuthLogOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_AuthLogOut(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$_AuthLogOut implements _AuthLogOut {
  const _$_AuthLogOut(
      {required this.manager, required this.scaffoldKey, this.context});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'AuthEvent.logout(manager: $manager, scaffoldKey: $scaffoldKey, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthLogOut &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthLogOutCopyWith<_$_AuthLogOut> get copyWith =>
      __$$_AuthLogOutCopyWithImpl<_$_AuthLogOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return logout(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return logout?.call(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(manager, scaffoldKey, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _AuthLogOut implements AuthEvent {
  const factory _AuthLogOut(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context}) = _$_AuthLogOut;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_AuthLogOutCopyWith<_$_AuthLogOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthDeleteAccountCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_AuthDeleteAccountCopyWith(_$_AuthDeleteAccount value,
          $Res Function(_$_AuthDeleteAccount) then) =
      __$$_AuthDeleteAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dio manager,
      GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context});
}

/// @nodoc
class __$$_AuthDeleteAccountCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthDeleteAccount>
    implements _$$_AuthDeleteAccountCopyWith<$Res> {
  __$$_AuthDeleteAccountCopyWithImpl(
      _$_AuthDeleteAccount _value, $Res Function(_$_AuthDeleteAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manager = null,
    Object? scaffoldKey = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_AuthDeleteAccount(
      manager: null == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as Dio,
      scaffoldKey: freezed == scaffoldKey
          ? _value.scaffoldKey
          : scaffoldKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<ScaffoldState>?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$_AuthDeleteAccount implements _AuthDeleteAccount {
  const _$_AuthDeleteAccount(
      {required this.manager, required this.scaffoldKey, this.context});

  @override
  final Dio manager;
  @override
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'AuthEvent.deleteAccount(manager: $manager, scaffoldKey: $scaffoldKey, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDeleteAccount &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.scaffoldKey, scaffoldKey) ||
                other.scaffoldKey == scaffoldKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manager, scaffoldKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDeleteAccountCopyWith<_$_AuthDeleteAccount> get copyWith =>
      __$$_AuthDeleteAccountCopyWithImpl<_$_AuthDeleteAccount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            String? token)
        authanticate,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)
        login,
    required TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)
        register,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithGoogle,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithApple,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        loginWithFacebook,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        logout,
    required TResult Function(Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey, BuildContext? context)
        deleteAccount,
  }) {
    return deleteAccount(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult? Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult? Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
  }) {
    return deleteAccount?.call(manager, scaffoldKey, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context, String? token)?
        authanticate,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            LoginRequestModel loginRequestModel,
            NetworkErrorModel? networkErrorModel)?
        login,
    TResult Function(
            Dio manager,
            GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context,
            RegisterRequestModel registerRequestModel,
            NetworkErrorModel? networkErrorModel)?
        register,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithGoogle,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithApple,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        loginWithFacebook,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        logout,
    TResult Function(Dio manager, GlobalKey<ScaffoldState>? scaffoldKey,
            BuildContext? context)?
        deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(manager, scaffoldKey, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authanticate value) authanticate,
    required TResult Function(AuthLogin value) login,
    required TResult Function(AuthRegister value) register,
    required TResult Function(_AuthLoginWithGoogle value) loginWithGoogle,
    required TResult Function(_AuthLoginWithApple value) loginWithApple,
    required TResult Function(_AuthLoginWithFacebook value) loginWithFacebook,
    required TResult Function(_AuthLogOut value) logout,
    required TResult Function(_AuthDeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authanticate value)? authanticate,
    TResult? Function(AuthLogin value)? login,
    TResult? Function(AuthRegister value)? register,
    TResult? Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_AuthLoginWithApple value)? loginWithApple,
    TResult? Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult? Function(_AuthLogOut value)? logout,
    TResult? Function(_AuthDeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authanticate value)? authanticate,
    TResult Function(AuthLogin value)? login,
    TResult Function(AuthRegister value)? register,
    TResult Function(_AuthLoginWithGoogle value)? loginWithGoogle,
    TResult Function(_AuthLoginWithApple value)? loginWithApple,
    TResult Function(_AuthLoginWithFacebook value)? loginWithFacebook,
    TResult Function(_AuthLogOut value)? logout,
    TResult Function(_AuthDeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _AuthDeleteAccount implements AuthEvent {
  const factory _AuthDeleteAccount(
      {required final Dio manager,
      required final GlobalKey<ScaffoldState>? scaffoldKey,
      final BuildContext? context}) = _$_AuthDeleteAccount;

  @override
  Dio get manager;
  @override
  GlobalKey<ScaffoldState>? get scaffoldKey;
  @override
  BuildContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDeleteAccountCopyWith<_$_AuthDeleteAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialCopyWith<$Res> {
  factory _$$AuthInitialCopyWith(
          _$AuthInitial value, $Res Function(_$AuthInitial) then) =
      __$$AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitial>
    implements _$$AuthInitialCopyWith<$Res> {
  __$$AuthInitialCopyWithImpl(
      _$AuthInitial _value, $Res Function(_$AuthInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitial implements AuthInitial {
  const _$AuthInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitial;
}

/// @nodoc
abstract class _$$LoginLoadingCopyWith<$Res> {
  factory _$$LoginLoadingCopyWith(
          _$LoginLoading value, $Res Function(_$LoginLoading) then) =
      __$$LoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginLoading>
    implements _$$LoginLoadingCopyWith<$Res> {
  __$$LoginLoadingCopyWithImpl(
      _$LoginLoading _value, $Res Function(_$LoginLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoading implements LoginLoading {
  const _$LoginLoading();

  @override
  String toString() {
    return 'AuthState.loginLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements AuthState {
  const factory LoginLoading() = _$LoginLoading;
}

/// @nodoc
abstract class _$$LoginSuccessCopyWith<$Res> {
  factory _$$LoginSuccessCopyWith(
          _$LoginSuccess value, $Res Function(_$LoginSuccess) then) =
      __$$LoginSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String? token, int userId});
}

/// @nodoc
class __$$LoginSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginSuccess>
    implements _$$LoginSuccessCopyWith<$Res> {
  __$$LoginSuccessCopyWithImpl(
      _$LoginSuccess _value, $Res Function(_$LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userId = null,
  }) {
    return _then(_$LoginSuccess(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoginSuccess implements LoginSuccess {
  const _$LoginSuccess({required this.token, required this.userId});

  @override
  final String? token;
  @override
  final int userId;

  @override
  String toString() {
    return 'AuthState.loginSuccess(token: $token, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccess &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      __$$LoginSuccessCopyWithImpl<_$LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return loginSuccess(token, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return loginSuccess?.call(token, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(token, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements AuthState {
  const factory LoginSuccess(
      {required final String? token,
      required final int userId}) = _$LoginSuccess;

  String? get token;
  int get userId;
  @JsonKey(ignore: true)
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorCopyWith<$Res> {
  factory _$$LoginErrorCopyWith(
          _$LoginError value, $Res Function(_$LoginError) then) =
      __$$LoginErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$LoginErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginError>
    implements _$$LoginErrorCopyWith<$Res> {
  __$$LoginErrorCopyWithImpl(
      _$LoginError _value, $Res Function(_$LoginError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$LoginError implements LoginError {
  const _$LoginError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'AuthState.loginError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorCopyWith<_$LoginError> get copyWith =>
      __$$LoginErrorCopyWithImpl<_$LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return loginError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return loginError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError implements AuthState {
  const factory LoginError({required final Object error}) = _$LoginError;

  Object get error;
  @JsonKey(ignore: true)
  _$$LoginErrorCopyWith<_$LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadingCopyWith<$Res> {
  factory _$$RegisterLoadingCopyWith(
          _$RegisterLoading value, $Res Function(_$RegisterLoading) then) =
      __$$RegisterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterLoading>
    implements _$$RegisterLoadingCopyWith<$Res> {
  __$$RegisterLoadingCopyWithImpl(
      _$RegisterLoading _value, $Res Function(_$RegisterLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoading implements RegisterLoading {
  const _$RegisterLoading();

  @override
  String toString() {
    return 'AuthState.regLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return regLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return regLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) {
    if (regLoading != null) {
      return regLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return regLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return regLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (regLoading != null) {
      return regLoading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading implements AuthState {
  const factory RegisterLoading() = _$RegisterLoading;
}

/// @nodoc
abstract class _$$RegisterSuccessCopyWith<$Res> {
  factory _$$RegisterSuccessCopyWith(
          _$RegisterSuccess value, $Res Function(_$RegisterSuccess) then) =
      __$$RegisterSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$RegisterSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterSuccess>
    implements _$$RegisterSuccessCopyWith<$Res> {
  __$$RegisterSuccessCopyWithImpl(
      _$RegisterSuccess _value, $Res Function(_$RegisterSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$RegisterSuccess(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegisterSuccess implements RegisterSuccess {
  const _$RegisterSuccess({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'AuthState.regSuccess(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccess &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessCopyWith<_$RegisterSuccess> get copyWith =>
      __$$RegisterSuccessCopyWithImpl<_$RegisterSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return regSuccess(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return regSuccess?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) {
    if (regSuccess != null) {
      return regSuccess(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return regSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return regSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (regSuccess != null) {
      return regSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess implements AuthState {
  const factory RegisterSuccess({required final int userId}) =
      _$RegisterSuccess;

  int get userId;
  @JsonKey(ignore: true)
  _$$RegisterSuccessCopyWith<_$RegisterSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorCopyWith<$Res> {
  factory _$$RegisterErrorCopyWith(
          _$RegisterError value, $Res Function(_$RegisterError) then) =
      __$$RegisterErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$RegisterErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterError>
    implements _$$RegisterErrorCopyWith<$Res> {
  __$$RegisterErrorCopyWithImpl(
      _$RegisterError _value, $Res Function(_$RegisterError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegisterError(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$RegisterError implements RegisterError {
  const _$RegisterError({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'AuthState.regError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorCopyWith<_$RegisterError> get copyWith =>
      __$$RegisterErrorCopyWithImpl<_$RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(String? token, int userId) loginSuccess,
    required TResult Function(Object error) loginError,
    required TResult Function() regLoading,
    required TResult Function(int userId) regSuccess,
    required TResult Function(Object error) regError,
  }) {
    return regError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(String? token, int userId)? loginSuccess,
    TResult? Function(Object error)? loginError,
    TResult? Function()? regLoading,
    TResult? Function(int userId)? regSuccess,
    TResult? Function(Object error)? regError,
  }) {
    return regError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(String? token, int userId)? loginSuccess,
    TResult Function(Object error)? loginError,
    TResult Function()? regLoading,
    TResult Function(int userId)? regSuccess,
    TResult Function(Object error)? regError,
    required TResult orElse(),
  }) {
    if (regError != null) {
      return regError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) regLoading,
    required TResult Function(RegisterSuccess value) regSuccess,
    required TResult Function(RegisterError value) regError,
  }) {
    return regError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? regLoading,
    TResult? Function(RegisterSuccess value)? regSuccess,
    TResult? Function(RegisterError value)? regError,
  }) {
    return regError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? regLoading,
    TResult Function(RegisterSuccess value)? regSuccess,
    TResult Function(RegisterError value)? regError,
    required TResult orElse(),
  }) {
    if (regError != null) {
      return regError(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements AuthState {
  const factory RegisterError({required final Object error}) = _$RegisterError;

  Object get error;
  @JsonKey(ignore: true)
  _$$RegisterErrorCopyWith<_$RegisterError> get copyWith =>
      throw _privateConstructorUsedError;
}
