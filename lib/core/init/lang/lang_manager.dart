import 'package:flutter/material.dart';

class LangManager {
  static LangManager? _instance;
  static LangManager get instance {
    _instance ??= LangManager._init();
    return _instance!;
  }

  LangManager._init();

  final trLocale = const Locale('tr', 'TR');
  final enLocale = const Locale('en', 'US');

  List<Locale> get supportLocales => [enLocale, trLocale];
}
