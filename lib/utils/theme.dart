import 'package:flutter/material.dart';
import 'package:ride/utils/app_color.dart';


class SmartPayThemeData {
  static ThemeData appThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: customKPrimaryColor,
      primaryColor: kPRYCOLOUR,
      fontFamily: 'SF Pro Display',
    );
  }
}
