import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/pages/about_surah_page.dart';
import 'package:project_fatiha/presentation/pages/manual_app_page.dart';
import 'package:project_fatiha/presentation/pages/read_error_page.dart';
import 'package:project_fatiha/presentation/pages/detail_tajweed_surah_page.dart';
import 'package:project_fatiha/presentation/pages/tajweed_surah_page.dart';

class AppRoute {
  Route onGeneratorRoute(routeSettings) {
    switch (routeSettings.name) {
      case 'about_surah_page':
        return MaterialPageRoute(
          builder: (_) => const AboutSurahPage(),
          settings: routeSettings,
        );
      case 'tajweed_surah_page':
        return MaterialPageRoute(
          builder: (_) => const TajweedSurahPage(),
          settings: routeSettings,
        );
      case 'subtleties_surah_page':
        return MaterialPageRoute(
          builder: (_) => const DetailTajweedSurahPage(),
          settings: routeSettings,
        );
      case 'read_error_page':
        return MaterialPageRoute(
          builder: (_) => const ReadErrorPage(),
          settings: routeSettings,
        );
      case 'management_app_page':
        return MaterialPageRoute(
          builder: (_) => const ManualAppPage(),
          settings: routeSettings,
        );
      default:
        throw (Exception('Invalid route ${routeSettings.name}'));
    }
  }
}
