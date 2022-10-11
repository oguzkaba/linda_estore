import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/account/model/user_model.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/model/login_request_model.dart';
import 'package:linda_wedding_ecommerce/features/auth/service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginUser>((event, emit) async {
      try {
        emit(LoginLoading());
        final token = await AuthService(event.manager, event.scaffoldKey)
            .loginUser(model: event.loginRequestModel);
        emit(LoginSuccess(token));
      } catch (e) {
        if (e is DioError) {
          emit(LoginError(e));
        }
      }
    });
    on<RegisterUser>((event, emit) async {
      try {
        emit(RegisterLoading());
        final user = await AuthService(event.manager, event.scaffoldKey)
            .registerUser(model: event.userModel);
        emit(Registered(user));
      } catch (e) {
        if (e is DioError) {
          emit(RegisterError(e));
        }
      }
    });
  }
}