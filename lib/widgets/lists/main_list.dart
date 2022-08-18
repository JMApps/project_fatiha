import 'package:flutter/material.dart';
import 'package:project_fatiha/widgets/items/main_list_item.dart';

class MainList extends StatelessWidget {
  const MainList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return MainListItem(currentIndex: index);
      },
    );
  }
}
