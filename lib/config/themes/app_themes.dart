import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade300,
    colorScheme: const ColorScheme.highContrastLight(
      primary: Color(0xFF71002b),
      onPrimary: Color(0xFFFF5722),
      secondary: Color(0xFFFF5722),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
  );

  final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.blueGrey.shade800,
    colorScheme: const ColorScheme.highContrastDark(
      primary: Color(0xFF192326),
      onPrimary: Color(0xFFF44336),
      secondary: Color(0xFFC62828),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),
  );
}

extension ColorSchemeS on ColorScheme {
  Color get mainBackgroundColor => brightness == Brightness.light
      ? const Color(0xFFEEEEEE)
      : const Color(0xFF192226);
}
