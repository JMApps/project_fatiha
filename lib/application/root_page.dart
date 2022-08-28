import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/modules/screens/main_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Фатиха',
      theme: AppThemes().lightTheme,
      darkTheme: AppThemes().darkTheme,
      home: const MainPage(),
    );
  }
}
