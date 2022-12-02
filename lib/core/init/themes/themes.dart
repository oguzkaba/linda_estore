import 'package:flutter/material.dart';
import '../../constants/app/colors_constants.dart';

class AppTheme {
  static AppTheme? _instance;
  static AppTheme get instance {
    _instance ??= AppTheme._init();
    return _instance!;
  }

  AppTheme._init();

  ThemeData get darkTheme => ThemeData.dark().copyWith(
      //TODO dark theme edit
      brightness: Brightness.dark,
      textTheme: _textThemeDark,
      primaryTextTheme: _primaryTextTheme,
      colorScheme: _colorScheme,
      appBarTheme: _appBarThemeDark,
      bottomNavigationBarTheme: _bottomNavBarThemeDark,
      expansionTileTheme: _expansionTileTheme,
      inputDecorationTheme: _inputTheme,
      scaffoldBackgroundColor: ColorConstants.myDark);

  ThemeData get lightTheme => ThemeData.light().copyWith(
        brightness: Brightness.light,
        scaffoldBackgroundColor: ColorConstants.myWhite,
        textTheme: _textThemeLight,
        primaryTextTheme: _primaryTextTheme,
        colorScheme: _colorScheme,
        appBarTheme: _appBarThemeLight,
        bottomNavigationBarTheme: _bottomNavBarThemeLight,
        expansionTileTheme: _expansionTileTheme,
        inputDecorationTheme: _inputTheme,
      );

  TextTheme get _textThemeLight => ThemeData.light()
      .textTheme
      .copyWith(
        headlineSmall: TextStyle(
            color: ColorConstants.myBlack, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(
            color: ColorConstants.primaryColor, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: ColorConstants.primaryColor, fontWeight: FontWeight.bold),
        labelLarge: TextStyle(color: ColorConstants.myMediumGrey),
        labelMedium: TextStyle(
            color: ColorConstants.myDark, fontWeight: FontWeight.bold),
        labelSmall: TextStyle(color: ColorConstants.myLightGrey),
        bodySmall: TextStyle(
            fontWeight: FontWeight.bold, color: ColorConstants.myDark),
      )
      .apply(
        fontFamily: 'Montserrat',
      );

  TextTheme get _textThemeDark => ThemeData.dark()
      .textTheme
      .copyWith(
        headlineSmall: TextStyle(
            color: ColorConstants.myWhite, fontWeight: FontWeight.bold),
        titleSmall: TextStyle(
            color: ColorConstants.primaryColor, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
            color: ColorConstants.primaryColor, fontWeight: FontWeight.bold),
        labelLarge: TextStyle(color: ColorConstants.myLightGrey),
        labelMedium: TextStyle(
            color: ColorConstants.myLightGrey, fontWeight: FontWeight.bold),
        labelSmall: TextStyle(color: ColorConstants.myLightGrey),
        bodySmall: TextStyle(
            fontWeight: FontWeight.bold, color: ColorConstants.myWhite),
      )
      .apply(
        fontFamily: 'Montserrat',
      );

  TextTheme get _primaryTextTheme => ThemeData.light().textTheme.apply(
        fontFamily: 'Montserrat',
      );

  InputDecorationTheme get _inputTheme =>
      InputDecorationTheme(prefixIconColor: ColorConstants.primaryColor);

  ColorScheme get _colorScheme => ThemeData().colorScheme.copyWith(
      primary: ColorConstants.primaryColor,
      secondary: ColorConstants.secondaryColor);

  ExpansionTileThemeData get _expansionTileTheme => ExpansionTileThemeData(
        backgroundColor: ColorConstants.myWhite,
        collapsedBackgroundColor: ColorConstants.myWhite,
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
      );

  BottomNavigationBarThemeData get _bottomNavBarThemeLight =>
      BottomNavigationBarThemeData(
        backgroundColor: ColorConstants.myWhite,
        selectedLabelStyle:
            TextStyle(fontSize: 10, color: ColorConstants.myDark),
        unselectedLabelStyle:
            TextStyle(fontSize: 10, color: ColorConstants.myLightGrey),
        type: BottomNavigationBarType.fixed,
      );

  BottomNavigationBarThemeData get _bottomNavBarThemeDark =>
      BottomNavigationBarThemeData(
        backgroundColor: ColorConstants.myDark,
        selectedLabelStyle:
            TextStyle(fontSize: 10, color: ColorConstants.myWhite),
        unselectedLabelStyle:
            TextStyle(fontSize: 10, color: ColorConstants.myLightGrey),
        type: BottomNavigationBarType.fixed,
      );

  AppBarTheme get _appBarThemeLight => AppBarTheme(
      toolbarHeight: 40,
      iconTheme: IconThemeData(color: ColorConstants.primaryColor),
      actionsIconTheme: IconThemeData(color: ColorConstants.primaryColor),
      backgroundColor: ColorConstants.myWhite,
      titleTextStyle: TextStyle(
          color: ColorConstants.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold));

  AppBarTheme get _appBarThemeDark => AppBarTheme(
      toolbarHeight: 40,
      iconTheme: IconThemeData(color: ColorConstants.primaryColor),
      actionsIconTheme: IconThemeData(color: ColorConstants.primaryColor),
      backgroundColor: ColorConstants.myMediumGrey,
      titleTextStyle: TextStyle(
          color: ColorConstants.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold));
}
