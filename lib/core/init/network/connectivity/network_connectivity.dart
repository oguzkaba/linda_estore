import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../enums/network_connectivity_enums.dart';

typedef NetworkCallBack = void Function(NetworkConnectivityEnums result);

abstract class INetworkConnectivity {
  Future<NetworkConnectivityEnums> checkNetworkConnectivity();
  void handleNetworkConnectivity(NetworkCallBack onChange);
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
  void handleNetworkConnectivity(NetworkCallBack onChange) {
    _subscription = _connectivity.onConnectivityChanged.listen((event) {
      onChange.call(NetworkConnectivityEnums.checkConnectivity(event));
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
