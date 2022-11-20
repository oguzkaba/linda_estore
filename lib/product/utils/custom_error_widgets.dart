import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../core/constants/app/colors_constants.dart';

class CustomErrorWidgets {
  static void showError(BuildContext context, String error,
      {double? topMargin}) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: ColorConstants.myRed,
      content: Row(
        children: [
          Icon(Icons.error_outline_rounded,
              color: ColorConstants.myWhite, size: 20),
          context.emptySizedWidthBoxLow,
          Expanded(
            child: Text(
              error,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: ColorConstants.myWhite),
            ),
          ),
        ],
      ),
      margin:
          EdgeInsets.fromLTRB(10, 0, 10, context.height - (topMargin ?? 80)),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
