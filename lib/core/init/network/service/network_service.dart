import 'dart:io';

import 'package:dio/dio.dart';

class NetworkService {
  static NetworkService? _instance;

  static NetworkService get instance {
    _instance ??= NetworkService._init();
    return _instance!;
  }

  NetworkService._init();

  static const String _baseUrl = 'https://fakestoreapi.com/';
  static const int _timeout = 15000;

  final Dio networkManager = Dio(
    BaseOptions(
        responseType: ResponseType.plain,
        baseUrl: _baseUrl,
        followRedirects: false,
        receiveTimeout: _timeout,
        sendTimeout: _timeout,
        //connectTimeout: _timeout,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        }),
  );
}
