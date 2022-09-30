import 'package:currency_converter/core/constants/colors_const.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get mytheme => ThemeData(
      colorScheme: const ColorScheme.light(
          primary: ConsColors.kPrimaryColor, brightness: Brightness.light));
}
