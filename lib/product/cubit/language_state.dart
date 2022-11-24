part of 'language_cubit.dart';

class LanguageState {
  final String languageCode;
  final String countryCode;

  const LanguageState(this.countryCode, this.languageCode);

  List<Object> get props => [languageCode, countryCode];
}
