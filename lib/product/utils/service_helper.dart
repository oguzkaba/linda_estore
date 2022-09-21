import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../../core/constants/app/colors.dart';

abstract class ServiceHelper {
  void showMessage(
      GlobalKey<ScaffoldState>? scaffoldKey, IErrorModel? errorModel) {
    if (scaffoldKey == null ||
        errorModel == null ||
        scaffoldKey.currentContext == null) return;
    ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(
        backgroundColor: ColorConstants.myRed,
        content: Text(errorModel.statusCode.toString())));
  }
}
