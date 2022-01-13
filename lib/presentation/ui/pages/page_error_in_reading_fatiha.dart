import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/appbars/app_bar_error_in_reading_fatiha.dart';

class PageErrorInReadingFatiha extends StatelessWidget {
  const PageErrorInReadingFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: AppBarErrorInReadingFatiha(),
      ),
      body: Container(
        color: Colors.red[100],
      ),
    );
  }
}
