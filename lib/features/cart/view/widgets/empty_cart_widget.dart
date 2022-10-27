import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/extansions/asset_extansion.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: context.paddingMedium,
        child: Column(
          children: [
            const Text("Empty Cart",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: context.height * .7,
              child: Lottie.asset("empty_cart".toLottie),
            ),
          ],
        ),
      ),
    );
  }
}
