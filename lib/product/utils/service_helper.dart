import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app/colors_constants.dart';

abstract class ServiceHelper {
  void showErrorMessage(
      GlobalKey<ScaffoldState>? scaffoldKey, DioError? errorModel) {
    if (scaffoldKey == null ||
        errorModel == null ||
        scaffoldKey.currentContext == null) return;
    ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(
        backgroundColor: ColorConstants.myRed,
        content: Text(errorModel.error.toString())));
  }
}
