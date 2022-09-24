import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  final double? circleRadius;
  final Color iColor;
  final String tooltip;

  const IconButtonWidget({
    Key? key,
    required this.icon,
    this.size,
    required this.iColor,
    required this.tooltip,
    this.circleRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: CircleAvatar(
        radius: circleRadius ?? 20,
        backgroundColor: iColor.withOpacity(0.1),
        child: IconButton(
          icon: Icon(icon, size: size ?? 24, color: iColor),
          onPressed: () {},
        ),
      ),
    );
  }
}
