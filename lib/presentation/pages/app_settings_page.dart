import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/settings_app_bar.dart';

class AppSettingsPage extends StatelessWidget {
  const AppSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 66),
        child: SettingsAppBar(),
      ),
      body: Container(),
    );
  }
}
