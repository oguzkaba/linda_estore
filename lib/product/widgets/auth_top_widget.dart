import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/product/cubit/language_cubit.dart';

import '../../core/extansions/asset_extansion.dart';
import '../../core/init/lang/lang_manager.dart';

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
    return BlocBuilder<LanguageCubit, LanguageState>(builder: (context, state) {
      if (state is LanguageLoaded) {
        return Visibility(
          visible: !context.isKeyBoardOpen,
          child: Column(
            children: [
              _buildTranslateButton(ctx, state),
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
      } else {
        return const SizedBox();
      }
    });
  }

  SizedBox _buildTranslateButton(BuildContext context, LanguageLoaded state) {
    return SizedBox(
      height: 20,
      child: Align(
          alignment: Alignment.centerRight,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: const SizedBox.shrink(),
              isExpanded: false,
              autofocus: false,
              value: context.locale,
              items: <DropdownMenuItem<Locale>>[
                _buildMenuItem(context, LangManager.instance.trLocale,
                    LangManager.instance.trLocale.languageCode, "flag/turkey"),
                _buildMenuItem(context, LangManager.instance.enLocale,
                    LangManager.instance.enLocale.languageCode, "flag/usa"),
                _buildMenuItem(context, LangManager.instance.ruLocale,
                    LangManager.instance.ruLocale.languageCode, "flag/russia"),
                _buildMenuItem(context, LangManager.instance.zhLocale,
                    LangManager.instance.zhLocale.languageCode, "flag/china"),
              ],
              onChanged: (dynamic value) {
                debugPrint(value.toString());
                context.read<LanguageCubit>().changeLanguage(
                    context, value.languageCode, value.countryCode);
              },
            ),
          )),
    );
  }

  DropdownMenuItem<Locale> _buildMenuItem(
      BuildContext context, Locale value, String langCode, String flag) {
    return DropdownMenuItem(
        value: value,
        child: Row(
          children: [
            Text(langCode.toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall),
            Image.asset(flag.toPNG, width: 18)
          ],
        ));
  }
}
