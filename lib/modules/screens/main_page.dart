import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/main_app_bar.dart';
import 'package:project_fatiha/widgets/items/main_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Container(
      color: myColor.mainPrimaryColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Card(
              margin: styleHelpers.mainAppBarWithoutBottomMargin,
              color: myColor.mainPrimaryColor,
              shape: styleHelpers.mainShapeRadius,
              child: const MainAppBar(),
            ),
          ),
          body: ListView(
            padding: styleHelpers.mainPadding,
            children: const [
              MainItem(
                cardTitle: 'Достоинства суры',
                cardTitleDescription: 'О достоинствах суры',
                routeName: 'page_about_surah',
              ),
              MainItem(
                cardTitle: 'Правила чтения',
                cardTitleDescription: 'Таджвид суры',
                routeName: 'page_tajweed_surah',
              ),
              MainItem(
                cardTitle: 'Чтение суры',
                cardTitleDescription: 'Чтение разными чтецами',
                routeName: 'page_write_surah',
              ),
              MainItem(
                cardTitle: 'Тонкости чтения',
                cardTitleDescription: 'Особенности чтения суры',
                routeName: 'page_subtleties_errors',
              ),
              MainItem(
                cardTitle: 'Ошибки при чтении',
                cardTitleDescription: 'Частые ошибки при чтении суры',
                routeName: 'page_read_errors',
              ),
              MainItem(
                cardTitle: 'Советы',
                cardTitleDescription: 'Советы по заучиванию суры',
                routeName: 'page_memorization_surah',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
