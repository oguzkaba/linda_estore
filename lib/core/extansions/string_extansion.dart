import 'package:easy_localization/easy_localization.dart';

import '../constants/regex/regex_constants.dart';

extension StringExtension on String {
  String get locale => this.tr();
  bool get isValidEmail => RegExp(RegexConstants.emailRegex).hasMatch(this);
}
