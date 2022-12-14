import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../enums/language_enum.dart';
import '../../extensions/asset_extansion.dart';
import '../../init/lang/cubit/language_cubit.dart';
import '../../init/lang/lang_manager.dart';

class LanguageDropDownButton extends StatelessWidget {
  final double? height;
  final Icon? dropIcon;
  final AlignmentGeometry? alignment;
  const LanguageDropDownButton(
      {super.key, this.height, this.alignment, this.dropIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 20,
      child: Align(
          alignment: alignment ?? Alignment.centerRight,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: dropIcon ?? const SizedBox.shrink(),
              isExpanded: false,
              autofocus: false,
              value: context.locale,
              items: <DropdownMenuItem<Locale>>[
                _buildMenuItem(context, LangManager.instance.trLocale,
                    LangManager.instance.trLocale.languageCode, 'flag/turkey'),
                _buildMenuItem(context, LangManager.instance.enLocale,
                    LangManager.instance.enLocale.languageCode, 'flag/usa'),
                _buildMenuItem(context, LangManager.instance.ruLocale,
                    LangManager.instance.ruLocale.languageCode, 'flag/russia'),
                _buildMenuItem(context, LangManager.instance.zhLocale,
                    LangManager.instance.zhLocale.languageCode, 'flag/china'),
              ],
              onChanged: (dynamic value) {
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
            Text(LanguageEnum.toLong(langCode),
                style: Theme.of(context).textTheme.bodySmall),
            context.emptySizedWidthBoxLow,
            Image.asset(flag.toPNG, height: height ?? 18)
          ],
        ));
  }
}
