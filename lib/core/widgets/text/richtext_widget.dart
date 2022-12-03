import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants/app/colors_constants.dart';

class RichTextWidget extends StatelessWidget {
  final String text;
  final String actionName;
  final VoidCallback? action;
  const RichTextWidget({
    Key? key,
    required this.text,
    required this.actionName,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(text: text, children: [
          TextSpan(
              text: actionName,
              style: TextStyle(color: ColorConstants.primaryColor),
              recognizer: TapGestureRecognizer()..onTap = action)
        ]),
        style: Theme.of(context).textTheme.bodySmall);
  }
}
