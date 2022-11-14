import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/init/cache/app_cache_manager.dart';
import 'package:linda_wedding_ecommerce/core/init/cache/app_cache_model.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/model/login_response_model.dart';
import 'package:linda_wedding_ecommerce/product/utils/json_decoder_util.dart';
import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../../account/model/account_model.dart';
import '../login/model/login_request_model.dart';
import '../service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    AppCacheManager appCacheManager = AppCacheManager(CacheConstants.appCache);
    on<AuthLogin>((event, emit) async {
      try {
        emit(LoginLoading());
        final result = await AuthService(event.manager, event.scaffoldKey)
            .login(model: event.loginRequestModel);

        if (result.object != null) {
          //Save hive box
          await appCacheManager.init();
          await appCacheManager.clear();

          final loginModel = result.object as LoginResponseModel;
          final userId = jwtToGetUserId(loginModel);

          await appCacheManager.putItem("token", loginModel.token!);

          emit(LoginSuccess(result.object!.toString(), userId));
        } else {
          emit(LoginError(result.error!));
        }
      } catch (e) {
        emit(LoginError(e));
      }
    });

    on<Authanticate>((event, emit) async {
      try {
        emit(LoginLoading());
        final userId = jwtToGetUserId(LoginResponseModel(token: event.token));
        emit(LoginSuccess(event.token!, userId));
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
