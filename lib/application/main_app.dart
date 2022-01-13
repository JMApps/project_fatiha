import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/main_bottom_navigation_state.dart';
import 'package:project_fatiha/presentation/ui/pages/main_page.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainBottomNavigationState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Фатиха',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: MainPage(),
      ),
    );
  }
}
