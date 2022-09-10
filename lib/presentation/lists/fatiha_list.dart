import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/database_state.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/fatiha_ayah_item.dart';
import 'package:provider/provider.dart';

class FatihaList extends StatelessWidget {
  const FatihaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: appWidgetStyle.fatihaContainerMargin,
      shape: appWidgetStyle.mainShape,
      child: FutureBuilder<List>(
        future: context.watch<DatabaseState>().getDatabaseQuery.getTafseerSurah(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                padding: appWidgetStyle.mainPaddingWithoutBottom,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return FatihaAyahItem(item: snapshot.data![index]);
                },
              )
              : const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
        },
      ),
    );
  }
}
