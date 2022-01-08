import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/body_about_fatiha.dart';
import 'package:project_fatiha/presentation/ui/widgets/main_app_bar.dart';
import 'package:project_fatiha/presentation/ui/widgets/salomon_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC4D4CA),
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(),
      ),
      body: const BodyAboutFatiha(),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFCE7D2E),
        ),
        child: const SalomonBottomNavigationBar(),
      ),
    );
  }
}
