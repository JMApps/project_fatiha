import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/route/app_route.dart';
import 'package:project_fatiha/domain/state/provider/database_state.dart';
import 'package:project_fatiha/domain/state/provider/home_sliding_segment_state.dart';
import 'package:project_fatiha/domain/state/provider/main_bottom_navigation_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/presentation/pages/main_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DatabaseState>(
          create: (_) => DatabaseState(),
        ),
        ChangeNotifierProvider<MainBottomNavigationState>(
          create: (_) => MainBottomNavigationState(),
        ),
        ChangeNotifierProvider<HomeSlidingSegmentState>(
          create: (_) => HomeSlidingSegmentState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Фатиха',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: AppRoute().onGeneratorRoute,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: MainPage(),
      ),
    );
  }
}
