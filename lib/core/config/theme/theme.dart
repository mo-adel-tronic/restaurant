import 'package:flutter/material.dart';
import 'package:restaurant/core/config/theme/colors.dart';
import 'package:restaurant/core/config/theme/text.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      //! Colors
      colorScheme: getDartScheme,
      //! Text Decoration
      textTheme: TextTheme(
        displayLarge: h1,
        displayMedium: h2,
        displaySmall: h3,
        bodyLarge: body1,
        bodyMedium: body2
      )
    );
  }
}