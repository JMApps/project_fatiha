import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/data/databases/service/database_query.dart';
import 'package:project_fatiha/presentation/ui/widgets/items/time_line_tile_left_item.dart';
import 'package:project_fatiha/presentation/ui/widgets/items/time_line_tile_right_item.dart';

class ListAboutFatiha extends StatelessWidget {
  ListAboutFatiha({Key? key}) : super(key: key);

  final _databaseQuery = DatabaseQuery();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: _databaseQuery.getAboutInfo(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        return snapshot.hasData
            ? CupertinoScrollbar(
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return index.isOdd
                        ? TimeLineLeftItem(
                            index: index,
                            item: snapshot.data![index],
                          )
                        : TimeLineRightItem(
                            index: index,
                            item: snapshot.data![index],
                          );
                  },
                ),
              )
            : Center(
                child: Platform.isIOS
                    ? const CupertinoActivityIndicator()
                    : const CircularProgressIndicator(),
              );
      },
    );
  }
}
