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
  final String? token;
  final int userId;

  const LoginSuccess({this.token, required this.userId});

  @override
  List<Object> get props => [userId];
}

class LoginError extends AuthState {
  final Object error;

  const LoginError(this.error);

  @override
  List<Object> get props => [error];
}

class LogOut extends AuthState {
  const LogOut();

  @override
  List<Object> get props => [];
}

///
///
//*Register

class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {
  final int userId;

  const RegisterSuccess(this.userId);

  @override
  List<Object> get props => [userId];
}

class RegisterError extends AuthState {
  final Object error;

  const RegisterError(this.error);

  @override
  List<Object> get props => [error];
}
