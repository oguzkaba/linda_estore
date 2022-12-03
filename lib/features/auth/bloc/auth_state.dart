part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loginLoading() = LoginLoading;
  const factory AuthState.loginSuccess(
      {required String? token, required int userId}) = LoginSuccess;
  const factory AuthState.loginError({required Object error}) = LoginError;

  const factory AuthState.regLoading() = RegisterLoading;
  const factory AuthState.regSuccess({required int userId}) = RegisterSuccess;

  const factory AuthState.regError({required Object error}) = RegisterError;
}
