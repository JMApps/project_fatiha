import 'package:flutter/material.dart';
import 'package:project_fatiha/modules/screens/about_surah_page.dart';

class AppRoute {
  Route onGeneratorRoute(routeSettings) {
    switch (routeSettings.name) {
      case 'page_about_surah':
        return MaterialPageRoute(
          builder: (_) => const AboutSurahPage(),
          settings: routeSettings,
        );
      default:
        throw (Exception('Invalid route ${routeSettings.name}'));
    }
  }
}
