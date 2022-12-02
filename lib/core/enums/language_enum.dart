enum LanguageEnum {
  en('English'),
  tr('Türkçe'),
  ru('Русский'),
  zh('中國人');

  const LanguageEnum(this.longName);
  final String longName;

  static String toLong(String langCode) {
    switch (langCode) {
      case 'en':
        return LanguageEnum.en.longName;
      case 'tr':
        return LanguageEnum.tr.longName;
      case 'ru':
        return LanguageEnum.ru.longName;
      case 'zh':
        return LanguageEnum.zh.longName;
      default:
        return LanguageEnum.en.longName;
    }
  }
}
