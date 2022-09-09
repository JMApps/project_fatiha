import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/items/fatiha_ayah_item.dart';

class FatihaList extends StatelessWidget {
  const FatihaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: appWidgetStyle.fatihaContainerMargin,
      shape: appWidgetStyle.mainShape,
      child: ListView.builder(
        padding: appWidgetStyle.mainPaddingWithoutBottom,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return const FatihaAyahItem();
        },
      ),
    );
  }
}
