import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../extansions/asset_extansion.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  final String lottieName;
  const LoadingIndicatorWidget({Key? key, required this.lottieName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .7,
      child: Center(child: Lottie.asset(lottieName.toLottie)),
    );
  }
}
