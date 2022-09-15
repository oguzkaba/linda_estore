import 'package:flutter/material.dart';

class EButtonWidget extends StatelessWidget {
  final VoidCallback? onPress;
  const EButtonWidget({
    Key? key,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          onPressed: onPress ?? () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: Colors.deepPurpleAccent),
          child: const Text("Sign In")),
    );
  }
}
