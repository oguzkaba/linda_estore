import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/auth/bloc/auth_bloc.dart';

import '../model/account_model.dart';
import '../service/account_service.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  int? userId;
  AccountBloc() : super(AccountInitial()) {
    on<AccountFetch>((event, emit) async {
      try {
        emit(AccountLoading());
        final state = event.authBloc.state;

        if (state is LoginSuccess) {
          userId = state.userId;
        }

        final result = await AccountService(event.manager, event.scaffoldKey)
            .getAccount(id: userId!);

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
