part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const AuthEvent(this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [];
}

class AuthLogin extends AuthEvent {
  final LoginRequestModel loginRequestModel;
  final NetworkErrorModel? networkErrorModel;
  final BuildContext context;

  const AuthLogin(
      super.manager, super.scaffoldKey, this.loginRequestModel, this.context,
      {this.networkErrorModel});
}

class Authanticate extends AuthEvent {
  final String? token;

  const Authanticate(super.manager, super.scaffoldKey, this.token);
}

class AuthRegister extends AuthEvent {
  final BuildContext context;

  const AuthRegister(super.manager, super.scaffoldKey, this.context);
}

class AuthLoginWithGoogle extends AuthEvent {
  const AuthLoginWithGoogle(super.manager, super.scaffoldKey);
}

class AuthLoginWithApple extends AuthEvent {
  const AuthLoginWithApple(super.manager, super.scaffoldKey);
}

class AuthLoginWithFacebook extends AuthEvent {
  const AuthLoginWithFacebook(super.manager, super.scaffoldKey);
}

class AuthLogOut extends AuthEvent {
  const AuthLogOut(super.manager, super.scaffoldKey);
}

class AuthDeleteAccount extends AuthEvent {
  const AuthDeleteAccount(super.manager, super.scaffoldKey);
}
