import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors.dart';

class AppTheme {
  static final lightTheme = ThemeData.light().copyWith(
      colorScheme: ThemeData()
          .colorScheme
          .copyWith(primary: ColorConstants.primaryColor),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: ColorConstants.secondaryColor),
          backgroundColor: ColorConstants.myWhite,
          titleTextStyle: TextStyle(
              color: ColorConstants.secondaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold)));
}
