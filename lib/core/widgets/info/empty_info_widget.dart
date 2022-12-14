import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../extensions/asset_extansion.dart';

class EmptyInfoWidget extends StatelessWidget {
  final String? text;
  final String? underText;
  final String lottieSrc;
  const EmptyInfoWidget(
      {super.key, this.text, required this.lottieSrc, this.underText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              Text(text ?? '',
                  style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(
                height: context.height * .7,
                child: Lottie.asset(lottieSrc.toLottie),
              ),
              Text(underText ?? '',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
