import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/main_menu_app_bar.dart';
import 'package:project_fatiha/presentation/lists/main_menu_list.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 66),
        child: MainMenuAppBar(),
      ),
      body: const MainMenuList(),
    );
  }
}
