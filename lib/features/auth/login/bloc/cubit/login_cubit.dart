import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState(false));

  Future<void> toogleSuffixIcon(bool value) async {
    emit(LoginState(value));
  }
}
