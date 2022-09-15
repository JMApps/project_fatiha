import 'package:flutter/cupertino.dart';
import 'package:project_fatiha/domain/state/provider/database_state.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/about_surah_item.dart';
import 'package:provider/provider.dart';

class AboutSurahList extends StatelessWidget {
  const AboutSurahList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: context.watch<DatabaseState>().getDatabaseQuery.getContentAboutSurah(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? CupertinoScrollbar(
                child: PageStorage(
                  bucket: context.read<DatabaseState>().getAboutSurahBucket,
                  child: ListView.builder(
                    padding: appWidgetStyle.mainPadding,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AboutSurahItem(
                        key: PageStorageKey<int>(index),
                        item: snapshot.data![index],
                      );
                    },
                  ),
                ),
              )
            : const Center(
                child: Text('Не удалось загрузить данные'),
              );
      },
    );
  }
}
