import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/app/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final IconData? pIcon;
  final IconData? sIcon;
  const TextFieldWidget({
    Key? key,
    this.labelText,
    this.hintText,
    this.obscureText,
    this.pIcon,
    this.sIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => value.isNotNullOrNoEmpty ? null : 'fail',
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          prefixIcon: pIcon == null ? null : Icon(pIcon),
          suffixIcon: sIcon == null ? null : Icon(sIcon),
          focusedBorder: GradientOutlineInputBorder(
              gradient: LinearGradient(colors: [
                ColorConstants.primaryColor,
                ColorConstants.secondaryColor,
                ColorConstants.primaryColor,
              ]),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: hintText ?? ""),
    );
  }
}
