import 'package:flutter/material.dart';

import '../../constants/app/colors_constants.dart';

class EButtonWidget extends StatelessWidget {
  final VoidCallback? onPress;
  final String? text;
  final double? width;
  final double? height;
  final Color? tColor;
  final Color? bgColor;
  final bool useBorder;
  final double? bRadius;
  final bool loading;
  const EButtonWidget({
    Key? key,
    required this.text,
    this.onPress,
    this.width,
    this.height,
    this.tColor,
    this.bgColor,
    this.useBorder = false,
    this.bRadius,
    this.loading = false,
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
              shape: loading
                  ? const CircleBorder()
                  : RoundedRectangleBorder(
                      side: BorderSide(
                          color: ColorConstants.primaryColor,
                          style:
                              useBorder ? BorderStyle.solid : BorderStyle.none),
                      borderRadius: BorderRadius.circular(bRadius ?? 10)),
              backgroundColor: bgColor ?? ColorConstants.primaryColor),
          child: loading
              ? Center(
                  child: SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(
                          color: ColorConstants.myWhite, strokeWidth: 2)))
              : Text(text!,
                  style: TextStyle(color: tColor ?? ColorConstants.myWhite))),
    );
  }
}
