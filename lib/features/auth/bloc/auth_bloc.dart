import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/init/cache/app_cache_manager.dart';
import 'package:linda_wedding_ecommerce/core/init/cache/app_cache_model.dart';
import 'package:linda_wedding_ecommerce/core/init/routes/routes.gr.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/model/login_response_model.dart';
import 'package:linda_wedding_ecommerce/features/auth/register/model/register_request_model.dart';
import 'package:linda_wedding_ecommerce/product/utils/json_decoder_util.dart';
import '../../../core/base/model/base_response_model.dart';
import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/init/network/model/network_error_model.dart';
import '../login/model/login_request_model.dart';
import '../service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    AppCacheManager appCacheManager = AppCacheManager(CacheConstants.appCache);
    on<AuthLogin>((event, emit) async {
      await _handleLogin(
          event: event, emit: emit, appCacheManager: appCacheManager);
    });

    on<AuthRegister>((event, emit) async {
      try {
        emit(RegisterLoading());

        final resultRegister =
            await AuthService(event.manager, event.scaffoldKey)
                .register(model: event.registerRequestModel);

        if (resultRegister.object != null) {
          /*
           If you send an object like the code above, it will return you an object with a new id. 
           remember that nothing in real will insert into the database. 
           so if you want to access the new id you will get a 404 error.
          */
          //?final registerModel = resultRegister.object as RegisterResponseModel;
          //?final userId = registerModel.id!;

          emit(const RegisterSuccess(1));

          await _handleLogin(
              event: event, emit: emit, appCacheManager: appCacheManager);
        } else {
          emit(RegisterError(resultRegister.error!));
        }
      } catch (e) {
        emit(RegisterError(e));
      }
    });

    on<Authanticate>((event, emit) async {
      try {
        emit(LoginLoading());
        final userId = jwtToGetUserId(LoginResponseModel(token: event.token));
        emit(LoginSuccess(token: event.token!, userId: userId));
      } catch (e) {
        emit(LoginError(e));
      }
    });

    on<AuthLogOut>((event, emit) async {
      try {
        //Delete token
        await appCacheManager.init();
        await appCacheManager.clear();

        emit(AuthInitial());
      } catch (e) {
        emit(LoginError(e));
      }
    });
  }

  Future<BaseResponseModel?> _loginResult({required AuthEvent event}) async {
    if (event is AuthLogin) {
      final result = await AuthService(event.manager, event.scaffoldKey)
          .login(model: event.loginRequestModel);
      return result;
    } else if (event is AuthRegister) {
      final result = await AuthService(event.manager, event.scaffoldKey).login(
          model: LoginRequestModel(
              username: event.registerRequestModel.username!,
              password: event.registerRequestModel.password!));
      return result;
    }
    return null;
  }

  Future<void> _handleLogin(
      {required Emitter<AuthState> emit,
      required AppCacheManager appCacheManager,
      required AuthEvent event}) async {
    try {
      emit(LoginLoading());
      var result = await _loginResult(event: event);

      if (result?.object != null) {
        //Save token
        await appCacheManager.init();
        //await appCacheManager.clear();
        final loginModel = result?.object as LoginResponseModel;
        final userId = jwtToGetUserId(loginModel);

        AppCacheModel appCacheModel =
            const AppCacheModel().copyWith(token: loginModel.token!);

        await appCacheManager.setModel(CacheConstants.appCache, appCacheModel);

        emit(LoginSuccess(token: loginModel.token, userId: userId));
      } else {
        emit(LoginError(result!.error!));
      }
    } catch (e) {
      emit(LoginError(e));
    }
  }
}
