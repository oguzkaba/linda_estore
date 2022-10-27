import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/product/cubit/language_cubit.dart';

import '../../core/constants/app/colors_constants.dart';
import '../../core/extansions/asset_extansion.dart';
import '../../core/init/lang/lang_manager.dart';

class AuthTopWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;

  const AuthTopWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, state) => Visibility(
        visible: !context.isKeyBoardOpen,
        child: Column(
          children: [
            context.watch<LanguageCubit>().isChangedLang
                ? _buildTranslateButton(context)
                : _buildTranslateButton(context),
            Text(title,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(subTitle, style: TextStyle(color: ColorConstants.myDark)),
            Padding(padding: context.paddingLow),
            SvgPicture.asset(
              image.toSVG,
              height: context.height * .35,
              cacheColorFilter: false,
            )
          ],
        ),
      ),
    );
  }

  SizedBox _buildTranslateButton(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Align(
          alignment: Alignment.centerRight,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: Icon(Icons.language_rounded,
                  size: 16, color: ColorConstants.myBlue),
              isExpanded: false,
              autofocus: false,
              value: context.locale,
              items: <DropdownMenuItem>[
                DropdownMenuItem(
                    value: LangManager.instance.trLocale,
                    child: Text(
                        LangManager.instance.trLocale.languageCode
                            .toUpperCase(),
                        style: const TextStyle(fontSize: 12))),
                DropdownMenuItem(
                    value: LangManager.instance.enLocale,
                    child: Text(
                        LangManager.instance.enLocale.languageCode
                            .toUpperCase(),
                        style: const TextStyle(fontSize: 12)))
              ],
              onChanged: (dynamic value) {
                debugPrint(value.toString());
                context.read<LanguageCubit>().changeLanguage(context, value);
              },
            ),
          )),
    );
  }
}
