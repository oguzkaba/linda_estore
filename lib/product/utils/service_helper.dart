import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

abstract class ServiceHelper {
  void showMessage(
      GlobalKey<ScaffoldState>? scaffoldKey, IErrorModel? errorModel) {
    if (scaffoldKey == null ||
        errorModel == null ||
        scaffoldKey.currentContext == null) return;
    ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(errorModel.statusCode.toString())));
  }
}
