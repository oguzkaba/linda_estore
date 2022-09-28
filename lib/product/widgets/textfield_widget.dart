import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:kartal/kartal.dart';

import '../../core/constants/app/colors_constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final IconData? pIcon;
  final IconData? sIcon;
  final VoidCallback? suffixOnPress;
  final Function(String)? onChange;
  final TextEditingController? fieldTextEditingController;
  final FocusNode? fieldFocusNode;
  const TextFieldWidget({
    Key? key,
    this.labelText,
    this.hintText,
    this.obscureText,
    this.pIcon,
    this.sIcon,
    this.suffixOnPress,
    this.fieldTextEditingController,
    this.fieldFocusNode,
    this.hintStyle,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      controller: fieldTextEditingController,
      focusNode: fieldFocusNode,
      validator: (value) => value.isNotNullOrNoEmpty ? null : 'fail',
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        contentPadding: context.horizontalPaddingMedium,
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? const TextStyle(fontSize: 14),
        filled: true,
        fillColor: ColorConstants.secondaryColor.withOpacity(.15),
        prefixIcon: pIcon == null ? null : Icon(pIcon, size: 20),
        suffixIcon: sIcon == null
            ? null
            : IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(sIcon, size: 20),
                onPressed: suffixOnPress,
              ),
        focusedBorder: GradientOutlineInputBorder(
            gradient: LinearGradient(colors: [
              ColorConstants.primaryColor,
              ColorConstants.secondaryColor,
              ColorConstants.primaryColor,
            ]),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }
}
