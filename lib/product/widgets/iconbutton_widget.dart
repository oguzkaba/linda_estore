import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color iColor;
  final String tooltip;

  const IconButtonWidget({
    Key? key,
    required this.icon,
    this.size,
    required this.iColor,
    required this.tooltip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      padding: context.paddingLow,
      margin: context.horizontalPaddingNormal,
      child: Icon(
        icon,
        size: size ?? 24,
        color: iColor,
      ),
    );
  }
}
