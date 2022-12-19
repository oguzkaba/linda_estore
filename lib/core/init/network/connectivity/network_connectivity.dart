import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../enums/network_connectivity_enums.dart';

typedef NetworkCallBack = void Function(NetworkConnectivityEnums result);

abstract class INetworkConnectivity {
  Future<NetworkConnectivityEnums> checkNetworkConnectivity();
  void handleNetworkConnectivity();
  void dispose();
}

class NetworkConnectivity extends INetworkConnectivity {
  late final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _subscription;

  NetworkConnectivity() {
    _connectivity = Connectivity();
  }

  @override
  Future<NetworkConnectivityEnums> checkNetworkConnectivity() async {
    final connectivityResult = await (_connectivity.checkConnectivity());
    return NetworkConnectivityEnums.checkConnectivity(connectivityResult);
  }

  @override
  Future<NetworkConnectivityEnums> handleNetworkConnectivity() async {
    NetworkConnectivityEnums connectivityEnums =
        await checkNetworkConnectivity();
    _subscription = _connectivity.onConnectivityChanged.listen((result) {
      connectivityEnums = NetworkConnectivityEnums.checkConnectivity(result);
    });
    return connectivityEnums;
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
