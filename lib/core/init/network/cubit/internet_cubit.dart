import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linda_estore/core/enums/network_connectivity_enums.dart';
import 'package:linda_estore/core/init/network/connectivity/network_connectivity.dart';

part 'internet_state.dart';
part 'internet_cubit.freezed.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit() : super(InternetState.loading());

  final NetworkConnectivity networkConnectivity = NetworkConnectivity();
  NetworkConnectivityEnums networkConnectivityEnums =
      NetworkConnectivityEnums.off;

  Future<void> checkInternetConnection() async {
    emit(InternetState.loading());
    networkConnectivityEnums =
        await networkConnectivity.handleNetworkConnectivity();

    if (networkConnectivityEnums == NetworkConnectivityEnums.on) {
      emit(InternetState.check(isOnline: true));
    } else {
      emit(InternetState.check(isOnline: false));
    }
  }
}
