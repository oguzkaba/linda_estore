import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors.dart';

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
    return Padding(
      padding: context.horizontalPaddingLow,
      child: CircleAvatar(
        backgroundColor: iColor.withOpacity(0.1),
        child: IconButton(
          icon: Icon(icon, size: size ?? 24, color: iColor),
          onPressed: () {},
        ),
      ),
    );
  }
}
