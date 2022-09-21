import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const ToogleSuffixIcon(false));

  void toogleSuffixIcon(bool value) {
    emit(ToogleSuffixIcon(value));
  }
}
