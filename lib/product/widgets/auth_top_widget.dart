import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/product/cubit/language_cubit.dart';
import 'package:linda_wedding_ecommerce/product/widgets/language_ddbutton_widget.dart';

import '../../core/extansions/asset_extansion.dart';

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
          LanguageDropDownButton(context: context),
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
