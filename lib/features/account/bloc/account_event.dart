part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const AccountEvent(this.manager, this.scaffoldKey);

  @override
  List<Object> get props => [];
}

class AccountFetch extends AccountEvent {
  const AccountFetch(super.manager, super.scaffoldKey);
}
