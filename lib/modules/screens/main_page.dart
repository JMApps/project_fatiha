import 'package:flutter/material.dart';
import 'package:project_fatiha/widgets/items/main_item.dart';
import 'package:project_fatiha/widgets/other/main_app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MainItem(currentIndex: 0),
            MainItem(currentIndex: 1),
            MainItem(currentIndex: 2),
            MainItem(currentIndex: 3),
            MainItem(currentIndex: 4),
          ],
        ),
      ),
    );
  }
}
