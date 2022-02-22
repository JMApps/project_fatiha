import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/other/main_app_bar.dart';

class PageFatiha extends StatelessWidget {
  const PageFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/surah_512.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
