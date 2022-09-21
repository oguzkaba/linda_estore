part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class ToogleSuffixIcon extends LoginState {
  final bool visibility;

  const ToogleSuffixIcon(this.visibility);

  @override
  List<Object> get props => [visibility];
}
