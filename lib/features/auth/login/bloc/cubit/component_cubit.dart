import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'component_cubit.freezed.dart';
part 'component_state.dart';

class LoginCubit extends Cubit<ComponentState> {
  LoginCubit() : super(const _ComponentVisible(visibility: false));

  Future<void> toogleSuffixIcon(bool value) async {
    emit(_ComponentVisible(visibility: value));
  }
}
