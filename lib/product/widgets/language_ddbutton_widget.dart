import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/extansions/asset_extansion.dart';

import '../../core/init/lang/lang_manager.dart';
import '../cubit/language_cubit.dart';

class LanguageDropDownButton extends StatelessWidget {
  final BuildContext context;
  final double? height;
  final AlignmentGeometry? alignment;
  const LanguageDropDownButton(
      {super.key, this.height, this.alignment, required this.context});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(builder: (context, state) {
      if (state is LanguageLoaded) {
        SizedBox(
          height: height ?? 20,
          child: Align(
              alignment: alignment ?? Alignment.centerRight,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  icon: const SizedBox.shrink(),
                  isExpanded: false,
                  autofocus: false,
                  value: context.locale,
                  items: <DropdownMenuItem<Locale>>[
                    _buildMenuItem(
                        context,
                        LangManager.instance.trLocale,
                        LangManager.instance.trLocale.languageCode,
                        "flag/turkey"),
                    _buildMenuItem(context, LangManager.instance.enLocale,
                        LangManager.instance.enLocale.languageCode, "flag/usa"),
                    _buildMenuItem(
                        context,
                        LangManager.instance.ruLocale,
                        LangManager.instance.ruLocale.languageCode,
                        "flag/russia"),
                    _buildMenuItem(
                        context,
                        LangManager.instance.zhLocale,
                        LangManager.instance.zhLocale.languageCode,
                        "flag/china"),
                  ],
                  onChanged: (dynamic value) {
                    debugPrint(value.toString());
                    context.read<LanguageCubit>().changeLanguage(
                        context, value.languageCode, value.countryCode);
                  },
                ),
              )),
        );
      } else {
        return const SizedBox();
      }
      return const SizedBox();
    });
  }

  DropdownMenuItem<Locale> _buildMenuItem(
      BuildContext context, Locale value, String langCode, String flag) {
    return DropdownMenuItem(
        value: value,
        child: Row(
          children: [
            Text(langCode.toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall),
            Image.asset(flag.toPNG, height: height ?? 18)
          ],
        ));
  }
}
