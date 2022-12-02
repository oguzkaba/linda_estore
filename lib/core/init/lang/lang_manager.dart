import 'package:flutter/material.dart';

//*flutter pub run easy_localization:generate -S assets/lang -f keys -O lib/core/init/lang -o locale_keys.g.dart

class LangManager {
  static LangManager? _instance;
  static LangManager get instance {
    _instance ??= LangManager._init();
    return _instance!;
  }

  LangManager._init();

  final trLocale = const Locale('tr', 'TR');
  final enLocale = const Locale('en', 'US');
  final ruLocale = const Locale('ru', 'RU');
  final zhLocale = const Locale('zh', 'CN');

  List<Locale> get supportLocales => [enLocale, trLocale, ruLocale, zhLocale];
}
