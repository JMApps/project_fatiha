import 'package:flutter/cupertino.dart';
import 'package:project_fatiha/domain/state/provider/database_state.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/tajweed_surah_item.dart';
import 'package:provider/provider.dart';

class TajweedSurahList extends StatelessWidget {
  const TajweedSurahList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: context.watch<DatabaseState>().getDatabaseQuery.getContentAboutSurah(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? CupertinoScrollbar(
          child: ListView.builder(
            padding: appWidgetStyle.mainPadding,
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return const TajweedSurahItem();
            },
          ),
        )
            : const Center(
          child: Text('Не удалось загрузить данные'),
        );
      },
    );
  }
}
