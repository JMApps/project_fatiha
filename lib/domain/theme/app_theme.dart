import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFECEFF1),
    fontFamily: 'Manrope',
    colorScheme: const ColorScheme.light(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    canvasColor: const Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFECEFF1),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontFamily: 'Manrope',
        color: Color(0xFF263238),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Color(0xFFF44336),
      unselectedItemColor: Color(0xFF263238),
    ),
    cardColor: const Color(0xFFFFFFFF),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF37474F),
    fontFamily: 'Manrope',
    colorScheme: const ColorScheme.dark(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    canvasColor: const Color(0xFF263238),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF37474F),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontFamily: 'Manrope',
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Color(0xFFFFC107),
      unselectedItemColor: Color(0xFFECEFF1),
    ),
    cardColor: const Color(0xFF263238),
  );
}

extension ColorSchemeS on ColorScheme {
  Color get mainAccentColor => brightness == Brightness.light
      ? const Color(0xFFF44336)
      : const Color(0xFFFFC107);

  Color get secondaryAccentColor => brightness == Brightness.light
      ? const Color(0xFFE57373)
      : const Color(0xFF8F6C00);

  Color get mainPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF263238)
      : const Color(0xFF90A4AE);

  Color get secondaryPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF607D8B)
      : const Color(0xFFECEFF1);

  Color get mainIconColor => brightness == Brightness.light
      ? const Color(0xFF263238)
      : const Color(0xFF90A4AE);

  Color get lightIconSplashColor => brightness == Brightness.light
      ? const Color(0xFFFFCDD2)
      : const Color(0xFFFFECB3);

  Color get mainTitleColor => brightness == Brightness.light
      ? const Color(0xFF263238)
      : const Color(0xFFFFFFFF);

  Color get mainSubTitleColor => brightness == Brightness.light
      ? const Color(0xFF37474F)
      : const Color(0xFFECEFF1);

  Color get mainAppBarColor => brightness == Brightness.light
      ? const Color(0xFFFFFFFF)
      : const Color(0xFF263238);

  Color get bottomNavigationClipColor => brightness == Brightness.light
      ? const Color(0xFFECEFF1)
      : const Color(0xFF37474F);

  Color get translationCardColor => brightness == Brightness.light
      ? const Color(0xFFECEFF1)
      : const Color(0xFF37474F);
}
