part of 'account_bloc.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState.initial() = _AccountInitial;
  const factory AccountState.loading() = _AccountLoading;
  const factory AccountState.loaded({required AccountModel accountModel}) =
      _AccountLoaded;
  const factory AccountState.error({required Object error}) = _AccountError;
}
