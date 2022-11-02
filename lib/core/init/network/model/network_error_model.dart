class NetworkErrorModel {
  final String? networkError;
  final int? networkStatus;

  NetworkErrorModel(this.networkError, this.networkStatus);

  @override
  String toString() =>
      'NetworkError "$networkError, Status Code: $networkStatus"';
}
