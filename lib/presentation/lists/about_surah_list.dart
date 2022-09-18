import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/database_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/about_surah_item.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutSurahList extends StatelessWidget {
  AboutSurahList({Key? key}) : super(key: key);

  final _pageController = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return FutureBuilder<List>(
      future: context.watch<DatabaseState>().getDatabaseQuery.getContentAboutSurah(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AboutSurahItem(
                          item: snapshot.data![index],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: appWidgetStyle.mainPadding,
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 9,
                      effect: CustomizableEffect(
                        activeDotDecoration: DotDecoration(
                          color: myColors.mainPrimaryColor,
                          dotBorder: const DotBorder(
                            padding: 2,
                            color: Colors.teal,
                            width: 2,
                          ),
                          width: 14,
                          height: 14,
                          borderRadius: BorderRadius.circular(4),
                          rotationAngle: 45,
                        ),
                        dotDecoration: DotDecoration(
                          color: Colors.teal,
                          width: 10,
                          height: 10,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        spacing: 8,
                      ),
                    ),
                  ),
                ],
              )
            : const Center(
                child: Text('Не удалось загрузить данные'),
              );
      },
    );
  }
}
