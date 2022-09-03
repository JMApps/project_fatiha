import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/main_item.dart';
import 'package:project_fatiha/widgets/other/main_app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Container(
      color: myColor.mainPrimaryColor,
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: myColor.mainBackgroundColor,
                  borderRadius: styleHelpers.mainContainerBorderRadius,
                  image: DecorationImage(
                    image: const AssetImage('assets/pictures/main_background.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      myColor.mainBackgroundColor.withOpacity(0.85),
                      BlendMode.srcATop,
                    ),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 66,
                    right: 16,
                    bottom: 16,
                  ),
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
                      cardTitleDescription: 'Обучающее чтение суры',
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
            const Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 50,
                child: PreferredSize(
                  preferredSize: Size(double.infinity, 50),
                  child: MainAppBar(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
