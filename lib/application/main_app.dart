import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/pages/main_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Фатиха',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MainPage(),
    );
  }
}
