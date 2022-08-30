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
      color: myColor.mainStatusBarColor,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 66),
            child: Card(
              margin: styleHelpers.mainAppBarWithoutBottomMargin,
              color: myColor.mainAppBarColor,
              shape: styleHelpers.mainShareRadius,
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
                cardColor: Color(0xFF97CBDC),
              ),
              MainItem(
                cardTitle: 'Правила чтения',
                cardTitleDescription: 'Таджвид суры',
                routeName: 'page_tajweed_surah',
                cardColor: Color(0xFFDCD697),
              ),
              MainItem(
                cardTitle: 'Чтение суры',
                cardTitleDescription: 'Чтение разными чтецами',
                routeName: 'page_write_surah',
                cardColor: Color(0xFFDC9797),
              ),
              MainItem(
                cardTitle: 'Тонкости чтения',
                cardTitleDescription: 'Особенности чтения суры',
                routeName: 'page_subtleties_errors',
                cardColor: Color(0xFF99DC97),
              ),
              MainItem(
                cardTitle: 'Ошибки при чтении',
                cardTitleDescription: 'Частые ошибки при чтении суры',
                routeName: 'page_read_errors',
                cardColor: Color(0xFFC397DC),
              ),
              MainItem(
                cardTitle: 'Советы',
                cardTitleDescription: 'Советы по заучиванию суры',
                routeName: 'page_memorization_surah',
                cardColor: Color(0xFFDCB197),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
