import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icon;
  final double? size;
  const IconButtonWidget({
    Key? key,
    required this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.black54,
      tooltip: "Google",
      icon: Icon(icon, size: size ?? 30),
      onPressed: () {},
    );
  }
}
