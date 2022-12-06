import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/init/cache/app_cache_manager.dart';
import '../../../core/utils/json_decoder_util.dart';
import '../../auth/login/model/login_response_model.dart';
import '../model/account_model.dart';
import '../service/account_service.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  int? userId;
  AccountBloc() : super(const _AccountInitial()) {
    AppCacheManager appCacheManager = AppCacheManager(CacheConstants.appCache);

    on<_AccountFetch>((event, emit) async {
      try {
        emit(const _AccountLoading());
        await appCacheManager.init();
        final getBoxModel = appCacheManager.getModel(CacheConstants.appCache);
        final userId =
            jwtToGetUserId(LoginResponseModel(token: getBoxModel!.token!));

        final result = await AccountService(event.manager, event.scaffoldKey)
            .getAccount(id: userId);

        if (result.object != null) {
          emit(_AccountLoaded(accountModel: result.object! as AccountModel));
        } else {
          emit(_AccountError(error: result.error!));
        }
      } catch (e) {
        emit(_AccountError(error: e));
      }
    });
  }
}
