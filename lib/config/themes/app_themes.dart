import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFC9D4D3),
    fontFamily: 'Sanfcancisco',
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF5C6BC0),
      centerTitle: true,
      elevation: 0,
    ),
    cardColor: const Color(0xFFC9D4D3),
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
      : const Color(0xFFFFA726);

  Color get mainBackgroundColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFF143A41);

  Color get mainIconColor => brightness == Brightness.light
      ? const Color(0xFFC9D4D3)
      : const Color(0xFFFFA726);

  Color get mainPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF5C6BC0)
      : const Color(0xFF0C2125);

  Color get mainSecondaryPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF9FA8DA)
      : const Color(0xFF164048);

  Color get mainAccentColor => brightness == Brightness.light
      ? const Color(0xFFAB47BC)
      : const Color(0xFFFB8C00);

  Color get mainSecondaryAccentColor => brightness == Brightness.light
      ? const Color(0xFFCE93D8)
      : const Color(0xFFFFA726);

  Color get writeSurahColor => brightness == Brightness.light
      ? const Color(0xFF414141)
      : const Color(0xFFC9C9C9);
}
