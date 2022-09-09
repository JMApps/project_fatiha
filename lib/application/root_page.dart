import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/route/app_route.dart';
import 'package:project_fatiha/domain/state/provider/home_sliding_segment_state.dart';
import 'package:project_fatiha/domain/state/provider/main_bottom_navigation_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/presentation/pages/main_page.dart';
import 'package:provider/provider.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
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
        theme: AppTheme.darkTheme,
        darkTheme: AppTheme.darkTheme,
        onGenerateRoute: AppRoute().onGeneratorRoute,
        home: MainPage(),
      ),
    );
  }
}
