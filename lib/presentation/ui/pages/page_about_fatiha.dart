import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/appbars/app_bar_about_fatiha.dart';

class PageAboutFatiha extends StatelessWidget {
  const PageAboutFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: AppBarAboutFatiha(),
      ),
      body: Container(
      ),
    );
  }
}
