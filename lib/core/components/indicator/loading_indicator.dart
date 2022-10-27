import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../extansions/asset_extansion.dart';

class LoadingIndicator extends StatelessWidget {
  final String lottieName;
  const LoadingIndicator({Key? key, required this.lottieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .7,
      child: Lottie.asset(lottieName.toLottie),
    );
  }
}
