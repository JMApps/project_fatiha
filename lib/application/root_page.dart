import 'package:flutter/material.dart';
import 'package:project_fatiha/modules/screens/main_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Фатиха',
      color: Colors.blue,
      home: MainPage(),
    );
  }
}
