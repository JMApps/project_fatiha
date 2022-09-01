import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFDDE8F0),
    fontFamily: 'Sanfcancisco',
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF018ABD),
      centerTitle: true,
      elevation: 0,
    ),
    cardColor: const Color(0xFFFFFFFF),
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

  Color get mainPrimaryColor => brightness == Brightness.light
      ? const Color(0xFF018ABD)
      : const Color(0xFF0C2125);

  Color get mainSubTitleColor => brightness == Brightness.light
      ? const Color(0xFF018ABD)
      : const Color(0xFF0C2125);

}
