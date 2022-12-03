part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authanticate(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context,
      required String? token}) = _Authanticate;

  const factory AuthEvent.login(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context,
      required LoginRequestModel loginRequestModel,
      NetworkErrorModel? networkErrorModel}) = AuthLogin;

  const factory AuthEvent.register(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context,
      required RegisterRequestModel registerRequestModel,
      NetworkErrorModel? networkErrorModel}) = AuthRegister;

  const factory AuthEvent.loginWithGoogle(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context}) = _AuthLoginWithGoogle;

  const factory AuthEvent.loginWithApple(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context}) = _AuthLoginWithApple;

  const factory AuthEvent.loginWithFacebook(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context}) = _AuthLoginWithFacebook;

  const factory AuthEvent.logout(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context}) = _AuthLogOut;

  const factory AuthEvent.deleteAccount(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey,
      BuildContext? context}) = _AuthDeleteAccount;
}
