import '../../extensions/string_extansion.dart';
import 'locale_keys.g.dart';

String translateCategory(String catName) {
  switch (catName) {
    case 'All':
      return LocaleKeys.home_category_catAll.locale;
    case 'Electronics':
      return LocaleKeys.home_category_catElc.locale;
    case 'Jewelery':
      return LocaleKeys.home_category_catJew.locale;
    case "Men's clothing":
      return LocaleKeys.home_category_catMen.locale;
    case "Women's clothing":
      return LocaleKeys.home_category_catWom.locale;
    default:
      return "";
  }
}
