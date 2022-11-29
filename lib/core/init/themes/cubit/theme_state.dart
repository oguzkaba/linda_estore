part of 'theme_cubit.dart';

class ThemeState {
  final ThemeData appTheme;
  final bool isDark;

  const ThemeState(this.appTheme, this.isDark);

  List<Object> get props => [appTheme, isDark];
}
