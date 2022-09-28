import 'package:flutter/material.dart';

import '../../core/constants/app/colors_constants.dart';

class CustomErrorWidgets {
  static void showError(BuildContext context, dynamic state) {
    final snackBar = SnackBar(
      backgroundColor: ColorConstants.myRed,
      content: Text(state.error.message),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
