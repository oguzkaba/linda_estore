import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../../account/model/user_model.dart';
import '../login/model/login_request_model.dart';
import '../service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLogin>((event, emit) async {
      //TODO tüm bloc ve servisleri bu şekilde değiştir
      try {
        emit(LoginLoading());
        final result = await AuthService(event.manager, event.scaffoldKey)
            .loginUser(model: event.loginRequestModel);

        if (result.object != null) {
          emit(LoginSuccess(result.object!.toString()));
        } else {
          emit(LoginError(result.error!));
        }
      } catch (e) {
        emit(LoginError(e));
      }
    });
    on<AuthRegister>((event, emit) async {
      try {
        emit(RegisterLoading());
        final result = await AuthService(event.manager, event.scaffoldKey)
            .registerUser(model: event.userModel);

        if (result.object != null) {
          emit(Registered(result.object as UserModel));
        } else {
          emit(RegisterError(result.error!));
        }
      } catch (e) {
        emit(LoginError(e));
      }
    });
  }
}
