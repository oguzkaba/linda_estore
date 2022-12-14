import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../constants/app/colors_constants.dart';
import '../extensions/string_extansion.dart';
import '../init/lang/locale_keys.g.dart';

class CustomDialogWidget {
  static Future<bool?> show(
      {required BuildContext context,
      required String title,
      required String content,
      required VoidCallback press}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title, style: Theme.of(context).textTheme.titleSmall),
          content: Text(content, style: Theme.of(context).textTheme.bodySmall),
          actions: <Widget>[
            TextButton(
                onPressed: press,
                child: Text(LocaleKeys.cart_alert_buttonText.locale,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: ColorConstants.myRed))),
            TextButton(
              onPressed: () => context.router.pop(false),
              child: Text(LocaleKeys.cart_alert_button2Text.locale,
                  style: Theme.of(context).textTheme.bodySmall),
            ),
          ],
        );
      },
    );
  }
}
