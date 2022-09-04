import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFC9D4D3),
    fontFamily: 'Sanfcancisco',
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF033F63),
      centerTitle: true,
      elevation: 0,
    ),
    cardColor: const Color(0xFFDDE7E3),
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
    cardColor: const Color(0xFF0C2125),
  );
}

extension ColorSchemeS on ColorScheme {
  Color get mainTitleColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFFFEDC97);

 Color get mainCardTitleColor => brightness == Brightness.light
      ? const Color(0xFF022E46)
      : const Color(0xFFFFB800);

  Color get mainBackgroundColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFF143A41);

  Color get mainIconColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFFFFB800);

  Color get mainSecondaryPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF0488E3)
      : const Color(0xFF164048);

  Color get mainPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF033F63)
      : const Color(0xFF0C2125);

  Color get mainPrimaryDarkColor => brightness == Brightness.light
      ? const Color(0xFF022E46)
      : const Color(0xFF0C2125);

  Color get mainAccentColor => brightness == Brightness.light
      ? const Color(0xFF28666E)
      : const Color(0xFFBD8000);

  Color get mainSecondaryAccentColor => brightness == Brightness.light
      ? const Color(0xFF348893)
      : const Color(0xFFE09A4B);

  Color get writeSurahColor => brightness == Brightness.light
      ? const Color(0xFF414141)
      : const Color(0xFFC9C9C9);

  Color get tajweedAyahColor => brightness == Brightness.light
      ? const Color(0xFF022E46)
      : const Color(0xFF0C2125);

}
