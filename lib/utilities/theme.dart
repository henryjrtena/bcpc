import 'package:brgy_abella/utilities/constant.dart';
import 'package:flutter/material.dart';

class BCPCTheme {
  static ThemeData get buildTheme {
    final baseTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: blue,
    );

    final colorScheme = baseTheme.colorScheme.copyWith(
      primary: blue,
      secondary: yellow,
    );

    return baseTheme.copyWith(
      colorScheme: colorScheme,
    );
  }
}
