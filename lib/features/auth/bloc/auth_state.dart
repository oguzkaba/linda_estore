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
  final int userId;

  const LoginSuccess(this.token, this.userId);

  @override
  List<Object> get props => [token, userId];
}

class LoginError extends AuthState {
  final Object error;

  const LoginError(this.error);

  @override
  List<Object> get props => [error];
}

///
///
//*Register

class RegisterLoading extends AuthState {}

class Registered extends AuthState {
  final AccountModel userModel;

  const Registered(this.userModel);
  @override
  List<Object> get props => [userModel];
}

class RegisterError extends AuthState {
  final Object error;

  const RegisterError(this.error);

  @override
  List<Object> get props => [error];
}
