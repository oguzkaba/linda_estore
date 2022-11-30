part of 'account_bloc.dart';

@freezed
abstract class AccountEvent with _$AccountEvent {
  const factory AccountEvent.fetch(
      {required Dio manager,
      required GlobalKey<ScaffoldState>? scaffoldKey}) = _AccountFetch;
}
