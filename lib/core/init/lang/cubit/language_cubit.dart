import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../lang_manager.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState('TR', 'tr'));
  Locale appLocale = LangManager.instance.trLocale;

  Future<void> changeLanguage(
      BuildContext context, String languageCode, String countryCode) async {
    appLocale = Locale(languageCode, countryCode);
    await context.setLocale(appLocale);
    emit(LanguageState(languageCode, countryCode));
  }
}
