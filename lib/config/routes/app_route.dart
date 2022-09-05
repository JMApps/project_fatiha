import 'package:flutter/material.dart';
import 'package:project_fatiha/modules/screens/about_surah_page.dart';
import 'package:project_fatiha/modules/screens/reading_features_page.dart';
import 'package:project_fatiha/modules/screens/tajweed_surah_page.dart';
import 'package:project_fatiha/modules/screens/write_surah_page.dart';

class AppRoute {
  Route onGeneratorRoute(routeSettings) {
    switch (routeSettings.name) {
      case 'page_about_surah':
        return MaterialPageRoute(
          builder: (_) => const AboutSurahPage(),
          settings: routeSettings,
        );
      case 'page_tajweed_surah':
        return MaterialPageRoute(
          builder: (_) => const TajweedSurahPage(),
          settings: routeSettings,
        );
      case 'page_write_surah':
        return MaterialPageRoute(
          builder: (_) => const WriteSurahPage(),
          settings: routeSettings,
        );
      case 'page_reading_features':
        return MaterialPageRoute(
          builder: (_) => const ReadingFeaturesPage(),
          settings: routeSettings,
        );
      default:
        throw (Exception('Invalid route ${routeSettings.name}'));
    }
  }
}
