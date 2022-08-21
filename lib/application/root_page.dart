import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/modules/screens/main_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final appThemes = AppThemes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Фатиха',
      theme: appThemes.lightTheme,
      darkTheme: appThemes.darkTheme,
      home: MainPage(),
    );
  }
}
