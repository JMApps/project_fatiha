import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/salomon_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC4D4CA),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xFF6F867E),
        ),
        child: const SalomonBottomNavigationBar(),
      ),
    );
  }
}
