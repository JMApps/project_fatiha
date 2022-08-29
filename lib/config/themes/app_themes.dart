import 'package:flutter/material.dart';

class AppThemes {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade300,
    fontFamily: 'Sanfcancisco',
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF71002b),
      centerTitle: true,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        color: Color(0xFF71002b),
      ),
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
    textTheme: const TextTheme(
      subtitle1: TextStyle(
        color: Color(0xff720070),
      ),
    ),
    cardColor: const Color(0xFF0C2125),
  );
}

extension ColorSchemeS on ColorScheme {
  Color get mainBackgroundColor => brightness == Brightness.light
      ? const Color(0xFFEEEEEE)
      : const Color(0xFF192226);

  Color get mainFirstCardColor => brightness == Brightness.light
      ? const Color(0xffab0049)
      : const Color(0xFF263238);

  Color get mainTitleColor => brightness == Brightness.light
      ? Colors.orange.shade900
      : const Color(0xFF009688);

  Color get mainSubTitleColor => brightness == Brightness.light
      ? const Color(0xFFFAD6B2)
      : const Color(0xFF009688);
}
