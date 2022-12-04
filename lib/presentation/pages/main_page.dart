import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/main_bottom_navigation_state.dart';
import 'package:project_fatiha/presentation/pages/app_settings_page.dart';
import 'package:project_fatiha/presentation/pages/fatiha_page.dart';
import 'package:project_fatiha/presentation/widgets/main_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  final _mainContainer = [
    //const MainMenuPage(),
    const FatihaPage(),
    const AppSettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainContainer[context.watch<MainBottomNavigationState>().getInitialNavigationIndex],
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
