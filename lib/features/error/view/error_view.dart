import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../../core/extensions/asset_extansion.dart';

class ErrorView extends StatelessWidget {
  final String errorText;
  const ErrorView({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingMedium,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(errorText, style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: context.height * .2),
          Lottie.asset('error'.toLottie, height: context.height * .3),
        ],
      ),
    );
  }
}
