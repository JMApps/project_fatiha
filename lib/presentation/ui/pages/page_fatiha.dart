import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/main_app_bar.dart';

class PageFatiha extends StatelessWidget {
  const PageFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(title: 'Фатиха'),
      ),
      body: Container(),
    );
  }
}
