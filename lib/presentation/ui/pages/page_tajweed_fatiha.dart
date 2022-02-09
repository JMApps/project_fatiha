import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/lists/list_tajweed_fatiha.dart';
import 'package:project_fatiha/presentation/ui/widgets/other/main_app_bar.dart';

class PageTajweedFatiha extends StatelessWidget {
  const PageTajweedFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(),
      ),
      body: ListTajweedFatiha(),
    );
  }
}
