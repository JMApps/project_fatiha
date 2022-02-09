import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/data/databases/service/database_query.dart';
import 'package:project_fatiha/presentation/ui/widgets/items/item_time_line_tile_tajweed.dart';

class ListTajweedFatiha extends StatelessWidget {
  ListTajweedFatiha({Key? key}) : super(key: key);

  final _databaseQuery = DatabaseQuery();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: _databaseQuery.getTajweedContent(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(
              child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text('${snapshot.error}'),
          ));
        }
        return snapshot.hasData
            ? CupertinoScrollbar(
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemTimeLineTileTajweed(
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
