import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/modules/screens/main_page.dart';

class RootPage extends StatelessWidget {
  RootPage({Key? key}) : super(key: key);

  final appThemes = AppThemes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Фатиха',
      theme: appThemes.lightTheme,
      darkTheme: appThemes.darkTheme,
      home: MainPage(),
    );
  }
}
