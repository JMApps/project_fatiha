import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFC9D4D3),
    fontFamily: 'Sanfcancisco',
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF3F51B5),
      centerTitle: true,
      elevation: 0,
    ),
  );

  final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF243136),
    fontFamily: 'Sanfcancisco',
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0C2125),
      centerTitle: true,
      elevation: 0,
    ),
  );
}

extension ColorSchemeS on ColorScheme {

  Color get mainAppBarTitleColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFF0C2125);

  Color get mainBackgroundColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFF0C2125);

  Color get mainPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF3F51B5)
      : const Color(0xFF0C2125);

  Color get mainSecondaryPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF6883FF)
      : const Color(0xFF0C2125);

  Color get mainAccentColor => brightness == Brightness.light
      ? const Color(0xFF4B08A1)
      : const Color(0xFF0C2125);

  Color get mainSecondaryAccentColor => brightness == Brightness.light
      ? const Color(0xFFBA68C8)
      : const Color(0xFF0C2125);

}
