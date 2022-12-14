import 'package:flutter/material.dart';
import '../../extensions/string_extansion.dart';

class LocaleText extends StatelessWidget {
  final String value;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  const LocaleText(
      {Key? key, required this.value, this.textStyle, this.textAlign})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(value.locale, style: textStyle, textAlign: textAlign);
  }
}
