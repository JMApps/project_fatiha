import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/main_app_bar.dart';
import 'package:project_fatiha/presentation/lists/main_menu_list.dart';
import 'package:project_fatiha/presentation/widgets/main_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 160),
        child: MainAppBar(),
      ),
      body: const MainMenuList(),
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
