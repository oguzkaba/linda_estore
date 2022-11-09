part of 'login_cubit.dart';

class LoginState extends Equatable {
  final bool visibility;
  const LoginState(this.visibility);

  @override
  List<Object> get props => [visibility];
}
