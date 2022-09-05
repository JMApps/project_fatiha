import 'package:flutter/material.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';
import 'package:project_fatiha/widgets/items/read_errors_left_item.dart';
import 'package:project_fatiha/widgets/items/read_errors_right_item.dart';

class ReadErrorsContentList extends StatelessWidget {
  const ReadErrorsContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    return ListView.builder(
      padding: styleHelpers.mainPaddingTopBottom,
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return index.isOdd
            ? const ReadErrorsLeftItem()
            : const ReadErrorsRightItem();
      },
    );
  }
}
