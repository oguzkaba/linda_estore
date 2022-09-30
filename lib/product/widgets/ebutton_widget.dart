import 'package:flutter/material.dart';

import '../../core/constants/app/colors_constants.dart';

class EButtonWidget extends StatelessWidget {
  final VoidCallback? onPress;
  final String text;
  final double? width;
  final double? height;
  const EButtonWidget({
    Key? key,
    this.onPress,
    required this.text,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
          onPressed: onPress ?? () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: ColorConstants.primaryColor),
          child: Text(text)),
    );
  }
}
