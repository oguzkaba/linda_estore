part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginUser extends AuthEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final LoginRequestModel loginRequestModel;

  const LoginUser(this.manager, this.scaffoldKey, this.loginRequestModel);
}

class RegisterUser extends AuthEvent {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final UserModel userModel;

  const RegisterUser(this.manager, this.scaffoldKey, this.userModel);
}
