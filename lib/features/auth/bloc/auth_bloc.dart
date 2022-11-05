import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/model/login_response_model.dart';
import 'package:linda_wedding_ecommerce/product/utils/json_decoder_util.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../../account/model/account_model.dart';
import '../login/model/login_request_model.dart';
import '../service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLogin>((event, emit) async {
      try {
        emit(LoginLoading());
        final result = await AuthService(event.manager, event.scaffoldKey)
            .login(model: event.loginRequestModel);

        if (result.object != null) {
          final userId = jwtToGetUserId(result.object as LoginResponseModel);

          emit(LoginSuccess(result.object!.toString(), userId));
        } else {
          emit(LoginError(result.error!));
        }
      } catch (e) {
        emit(LoginError(e));
      }
    });
    // on<AuthRegister>((event, emit) async {
    //   try {
    //     emit(RegisterLoading());
    //     final result = await AuthService(event.manager, event.scaffoldKey)
    //         .register(model: event.accountModel);

    //     if (result.object != null) {
    //       emit(Registered(result.object as AccountModel));
    //     } else {
    //       emit(RegisterError(result.error!));
    //     }
    //   } catch (e) {
    //     emit(LoginError(e));
    //   }
    // });
  }
}
