part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

//*Login

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final String token;

  const LoginSuccess(this.token);

  @override
  List<Object> get props => [token];
}

class LoginError extends AuthState {
  final String error;

  const LoginError(this.error);

  @override
  List<Object> get props => [error];
}

///
///
//*Register

class RegisterLoading extends AuthState {}

class Registered extends AuthState {
  final UserModel userModel;

  const Registered(this.userModel);
}

class RegisterError extends AuthState {
  final DioError error;

  const RegisterError(this.error);

  @override
  List<Object> get props => [error];
}
