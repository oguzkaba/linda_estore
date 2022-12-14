import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:kartal/kartal.dart';

import '../../constants/app/colors_constants.dart';
import '../../extensions/string_extansion.dart';
import '../../init/lang/locale_keys.g.dart';

class TextFieldWidget extends StatefulWidget {
  final String? labelText;
  final String? hintText;
  final bool? obscureText;
  final TextStyle? hintStyle;
  final IconData? pIcon;
  final IconData? sIcon;
  final VoidCallback? suffixOnPress;
  final Function(String)? onSubmitted;
  final Function(String)? onChange;
  final TextEditingController? controller;
  final TextInputType? keyType;
  final TextInputAction? actionType;
  final FocusNode? fieldFocusNode;
  const TextFieldWidget({
    Key? key,
    this.labelText,
    this.hintText,
    this.obscureText,
    this.pIcon,
    this.sIcon,
    this.suffixOnPress,
    this.controller,
    this.fieldFocusNode,
    this.hintStyle,
    this.onChange,
    this.onSubmitted,
    this.keyType,
    this.actionType,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  void dispose() {
    widget.fieldFocusNode?.unfocus();
    //widget.controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyType,
      textInputAction: widget.actionType,
      style: Theme.of(context).textTheme.bodySmall,
      onFieldSubmitted: widget.onSubmitted,
      onChanged: widget.onChange,
      controller: widget.controller,
      focusNode: widget.fieldFocusNode,
      validator: (value) => value.isNullOrEmpty
          ? LocaleKeys.error_emptyField.locale
          : value!.length < 6
              ? LocaleKeys.error_shortEntry.locale
              : null,
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
        contentPadding: context.horizontalPaddingMedium,
        hintText: widget.hintText ?? '',
        hintStyle: widget.hintStyle ??
            Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: ColorConstants.myMediumGrey),
        filled: true,
        fillColor: ColorConstants.secondaryColor.withOpacity(.15),
        prefixIcon: widget.pIcon == null ? null : Icon(widget.pIcon, size: 20),
        suffixIcon: widget.sIcon == null
            ? null
            : IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(widget.sIcon, size: 20),
                onPressed: widget.suffixOnPress,
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
