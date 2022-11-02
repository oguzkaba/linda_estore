part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogin extends AuthEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final LoginRequestModel loginRequestModel;
  final NetworkErrorModel? networkErrorModel;
  final BuildContext context;

  const AuthLogin(
      this.manager, this.scaffoldKey, this.loginRequestModel, this.context,
      {this.networkErrorModel});
}

class AuthRegister extends AuthEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final UserModel userModel;
  final BuildContext context;

  const AuthRegister(
      this.manager, this.scaffoldKey, this.userModel, this.context);
}

class AuthLoginWithGoogle extends AuthEvent {}

class AuthLoginWithApple extends AuthEvent {}

class AuthLoginWithFacebook extends AuthEvent {}

class AuthLogOut extends AuthEvent {}

class AuthDeleteAccount extends AuthEvent {}
