import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/main_app_bar.dart';
import 'package:project_fatiha/presentation/ui/widgets/time_line_tile_left_item.dart';
import 'package:project_fatiha/presentation/ui/widgets/time_line_tile_right_item.dart';

class PageAboutFatiha extends StatelessWidget {
  const PageAboutFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 50),
        child: MainAppBar(),
      ),
      body: CupertinoScrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: const [
            TimeLineLeftItem(index: 1),
            TimeLineRightItem(index: 2),
            TimeLineLeftItem(index: 3),
            TimeLineRightItem(index: 4),
            TimeLineLeftItem(index: 3),
            TimeLineRightItem(index: 4),
            TimeLineLeftItem(index: 3),
            TimeLineRightItem(index: 4),
            TimeLineLeftItem(index: 3),
            TimeLineRightItem(index: 4),
            TimeLineLeftItem(index: 3),
            TimeLineRightItem(index: 4),
          ],
        ),
      ),
    );
  }
}
