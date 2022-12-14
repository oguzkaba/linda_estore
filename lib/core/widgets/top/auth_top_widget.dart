import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';

import '../../extensions/asset_extansion.dart';
import '../dropdown/language_ddbutton_widget.dart';

class AuthTopWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final BuildContext ctx;

  const AuthTopWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !context.isKeyBoardOpen,
      child: Column(
        children: [
          const LanguageDropDownButton(),
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          Text(subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge),
          Padding(padding: context.paddingLow),
          SvgPicture.asset(
            image.toSVG,
            height: context.height * .35,
            cacheColorFilter: false,
          )
        ],
      ),
    );
  }
}
