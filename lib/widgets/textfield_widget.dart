import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

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
    return TextField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          //labelStyle: TextStyle(color: Colors.deepPurple),
          //labelText: labelText ?? "",

          prefixIcon: pIcon == null ? null : Icon(pIcon),
          suffixIcon: sIcon == null ? null : Icon(sIcon),
          focusedBorder: const GradientOutlineInputBorder(
              gradient: LinearGradient(colors: [
                Colors.deepPurpleAccent,
                Color(0xffff70af),
                Colors.deepPurpleAccent,
              ]),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          hintText: hintText ?? ""),
    );
  }
}
