import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';
import 'package:project_fatiha/widgets/items/main_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customStyles = CustomStyles();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 150),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              shape: customStyles.bottomShapeRadius,
              floating: false,
              pinned: true,
              primary: true,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    image: customStyles.appBarDecorationImage,
                  ),
                ),
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                title: ListTile(
                  title: Text(
                    'الفاتحة',
                    style: customStyles.mainTitleArabicStyle,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Открывающая Книгу',
                    style: customStyles.mainTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: customStyles.mainPageDecorationImage,
        ),
        child: ListView(
          padding: customStyles.mainPadding,
          children: const [
            MainItem(cardTitle: 'Достоинства суры', cardTitleDescription: 'О достоинствах суры аль-Фатиха', routeName: 'page_about_surah'),
            MainItem(cardTitle: 'Правила чтения', cardTitleDescription: 'Таджвид суры аль-Фатиха', routeName: 'page_tajweed_surah'),
            MainItem(cardTitle: 'Чтение суры', cardTitleDescription: 'Чтение разными чтецами', routeName: 'page_write_surah'),
            MainItem(cardTitle: 'Тонкости чтения', cardTitleDescription: 'Особенности чтения суры аль-Фатиха', routeName: 'page_read_errors'),
            MainItem(cardTitle: 'Ошибки при чтении', cardTitleDescription: 'Частые ошибки при чтении суры аль-Фатиха', routeName: 'page_read_errors'),
          ],
        ),
      ),
    );
  }
}
