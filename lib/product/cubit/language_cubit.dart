import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/init/lang/lang_manager.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(LangManager.instance.trLocale);
  Locale appLocale = LangManager.instance.trLocale;
  bool isChangedLang = false;

  Future<void> changeLanguage(BuildContext context, Locale value) async {
    isChangedLang = false;
    appLocale = value;
    await context.setLocale(appLocale);
    emit(appLocale);
    isChangedLang = true;
  }
}
