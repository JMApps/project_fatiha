import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/database_state.dart';
import 'package:project_fatiha/domain/state/provider/translation_surah_state.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/fatiha_ayah_item.dart';
import 'package:provider/provider.dart';

class FatihaList extends StatelessWidget {
  const FatihaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TranslationSurahState>(
          create: (_) => TranslationSurahState(),
        ),
      ],
      child: Consumer<TranslationSurahState>(
        builder: (context, translationSurahState, _) {
          return Card(
            elevation: 1,
            margin: appWidgetStyle.fatihaContainerMargin,
            shape: appWidgetStyle.mainShape,
            child: FutureBuilder<List>(
              future: context.watch<DatabaseState>().getDatabaseQuery.getTafseerSurah(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: PageView.builder(
                      scrollDirection: Axis.vertical,
                      controller: translationSurahState.getTranslateAyahController,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FatihaAyahItem(item: snapshot.data![index]);
                      },
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
