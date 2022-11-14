import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/constants/cache/cache_constants.dart';
import 'package:linda_wedding_ecommerce/core/init/cache/app_cache_manager.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/model/login_response_model.dart';

import '../../../product/utils/json_decoder_util.dart';
import '../model/account_model.dart';
import '../service/account_service.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  int? userId;
  AccountBloc() : super(AccountInitial()) {
    AppCacheManager appCacheManager = AppCacheManager(CacheConstants.appCache);

    on<AccountFetch>((event, emit) async {
      try {
        emit(AccountLoading());
        await appCacheManager.init();
        final getBoxToken = appCacheManager.getItem("token");
        final userId = jwtToGetUserId(LoginResponseModel(token: getBoxToken));

        final result = await AccountService(event.manager, event.scaffoldKey)
            .getAccount(id: userId);

        if (result.object != null) {
          emit(AccountLoaded(result.object! as AccountModel));
        } else {
          emit(AccountError(result.error!));
        }
      } catch (e) {
        emit(AccountError(e));
      }
    });
  }
}
