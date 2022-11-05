part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  const AccountState();

  @override
  List<Object> get props => [];
}

class AccountInitial extends AccountState {}

class AccountLoading extends AccountState {}

class AccountLoaded extends AccountState {
  final AccountModel accountModel;

  const AccountLoaded(this.accountModel);
  @override
  List<Object> get props => [accountModel];
}

class AccountError extends AccountState {
  final Object error;

  const AccountError(this.error);

  @override
  List<Object> get props => [error];
}
