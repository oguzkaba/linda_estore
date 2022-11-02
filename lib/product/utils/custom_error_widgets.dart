import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/product/widgets/iconbutton_widget.dart';

import '../../core/constants/app/colors_constants.dart';

class CustomErrorWidgets {
  static void showError(BuildContext context, String error) {
    final snackBar = MaterialBanner(
      backgroundColor: ColorConstants.myRed,
      leading: Icon(Icons.error_outline_rounded,
          color: ColorConstants.myWhite, size: 20),
      content: Text(error, overflow: TextOverflow.ellipsis),
      contentTextStyle: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: ColorConstants.myWhite),
      actions: [
        IconButtonWidget(
          size: 18,
          icon: Icons.close,
          iColor: ColorConstants.myWhite,
          tooltip: "Close",
          onPress: () {
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            context.router.pop();
          },
        )
      ],
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentMaterialBanner()
      ..showMaterialBanner(snackBar);
  }
}
