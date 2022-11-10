import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';
import 'package:lottie/lottie.dart';

import '../../core/extansions/asset_extansion.dart';

class EmptyInfoWidget extends StatelessWidget {
  final String text;
  final String lottieSrc;
  const EmptyInfoWidget(
      {super.key, required this.text, required this.lottieSrc});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: context.paddingMedium,
        child: Column(
          children: [
            Text(text, style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(
              height: context.height * .7,
              child: Lottie.asset(lottieSrc.toLottie),
            ),
          ],
        ),
      ),
    );
  }
}
