import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/appbars/app_bar_tajweed_fatiha.dart';

class PageTajweedFatiha extends StatelessWidget {
  const PageTajweedFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: AppBarTajweedFatiha(),
      ),
      body: Container(
        color: Colors.grey[100],
      ),
    );
  }
}
