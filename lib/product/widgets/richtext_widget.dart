import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app/colors_constants.dart';
import '../../core/init/routes/routes.gr.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(text: "Don't have account? ", children: [
          TextSpan(
              text: " +Register",
              style: TextStyle(color: ColorConstants.primaryColor),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.router.push(const RegisterView());
                })
        ]),
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: ColorConstants.myDark));
  }
}
