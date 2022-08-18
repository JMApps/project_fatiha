import 'package:flutter/material.dart';
import 'package:project_fatiha/widgets/lists/main_list.dart';
import 'package:project_fatiha/widgets/other/main_app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(),
      ),
      body: MainList(),
    );
  }
}
