import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/main_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 100),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: styleHelpers.bottomShapeRadius,
              floating: false,
              pinned: true,
              primary: true,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    image: styleHelpers.appBarDecorationImage,
                  ),
                ),
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                title: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'الفاتحة',
                      style: TextStyle(color: myColor.mainTitleColor),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Открывающая Книгу',
                      style: TextStyle(
                        color: myColor.mainSubTitleColor,
                        fontSize: 12,
                        letterSpacing: -0.15
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: styleHelpers.mainPageDecorationImage,
        ),
        child: ListView(
          padding: styleHelpers.mainPadding,
          children: const [
            MainItem(
                cardTitle: 'Достоинства суры',
                cardTitleDescription: 'О достоинствах суры',
                routeName: 'page_about_surah'),
            MainItem(
                cardTitle: 'Правила чтения',
                cardTitleDescription: 'Таджвид суры',
                routeName: 'page_tajweed_surah'),
            MainItem(
                cardTitle: 'Чтение суры',
                cardTitleDescription: 'Чтение разными чтецами',
                routeName: 'page_write_surah'),
            MainItem(
                cardTitle: 'Тонкости чтения',
                cardTitleDescription: 'Особенности чтения суры',
                routeName: 'page_read_errors'),
            MainItem(
                cardTitle: 'Ошибки при чтении',
                cardTitleDescription: 'Частые ошибки при чтении суры',
                routeName: 'page_read_errors'),
          ],
        ),
      ),
    );
  }
}
