part of 'language_cubit.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageLoaded extends LanguageState {
  final String languageCode;
  final String countryCode;

  const LanguageLoaded(this.countryCode, this.languageCode);

  @override
  List<Object> get props => [languageCode, countryCode];
}
