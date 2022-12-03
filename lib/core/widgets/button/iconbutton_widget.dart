import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final double? circleRadius;
  final Color iColor;
  final Color? bColor;
  final String? tooltip;
  final VoidCallback? onPress;

  const IconButtonWidget({
    Key? key,
    required this.icon,
    this.size,
    required this.iColor,
    this.tooltip,
    this.circleRadius,
    this.onPress,
    this.bColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: CircleAvatar(
        radius: circleRadius ?? 20,
        backgroundColor: bColor ?? iColor.withOpacity(0.05),
        child: IconButton(
          splashRadius: 1,
          icon: Icon(icon, size: size ?? 24, color: iColor),
          onPressed: onPress,
        ),
      ),
    );
  }
}
