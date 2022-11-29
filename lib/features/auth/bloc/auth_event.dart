part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final BuildContext context;

  const AuthEvent(this.manager, this.scaffoldKey, this.context);

  @override
  List<Object> get props => [];
}

class AuthLogin extends AuthEvent {
  final LoginRequestModel loginRequestModel;
  final NetworkErrorModel? networkErrorModel;

  const AuthLogin(
      super.manager, super.scaffoldKey, this.loginRequestModel, super.context,
      {this.networkErrorModel});
}

class Authanticate extends AuthEvent {
  final String? token;

  const Authanticate(
      super.manager, super.scaffoldKey, super.context, this.token);
}

class AuthRegister extends AuthEvent {
  final RegisterRequestModel registerRequestModel;
  final NetworkErrorModel? networkErrorModel;

  const AuthRegister(super.manager, super.scaffoldKey, super.context,
      this.registerRequestModel,
      {this.networkErrorModel});
}

class AuthLoginWithGoogle extends AuthEvent {
  const AuthLoginWithGoogle(super.manager, super.scaffoldKey, super.context);
}

class AuthLoginWithApple extends AuthEvent {
  const AuthLoginWithApple(super.manager, super.scaffoldKey, super.context);
}

class AuthLoginWithFacebook extends AuthEvent {
  const AuthLoginWithFacebook(super.manager, super.scaffoldKey, super.context);
}

class AuthLogOut extends AuthEvent {
  const AuthLogOut(super.manager, super.scaffoldKey, super.context);
}

class AuthDeleteAccount extends AuthEvent {
  const AuthDeleteAccount(super.manager, super.scaffoldKey, super.context);
}
