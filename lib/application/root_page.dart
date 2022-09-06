import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/pages/main_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Фатиха',
      home: MainPage(),
    );
  }
}
