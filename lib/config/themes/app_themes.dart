import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade300,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF71002b),
      centerTitle: true,
      elevation: 0,
    ),
    cardColor: const Color(0xFFFFFFFF),
  );

  final darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF243136),
    appBarTheme: const AppBarTheme(
      backgroundColor:  Color(0xFF0C2125),
      centerTitle: true,
      elevation: 0,
    ),
    cardColor: const Color(0xFF0C2125),
  );
}

extension ColorSchemeS on ColorScheme {
  Color get mainBackgroundColor => brightness == Brightness.light
      ? const Color(0xFFEEEEEE)
      : const Color(0xFF192226);

  Color get mainFirstCardColor => brightness == Brightness.light
      ? const Color(0xFF71002b)
      : const Color(0xFF263238);
}
