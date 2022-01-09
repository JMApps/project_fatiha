import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BodyAboutFatiha extends StatelessWidget {
  const BodyAboutFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: TimelineTile(
        axis: TimelineAxis.horizontal,
        alignment: TimelineAlign.manual,
        lineXY: 0.3,
        endChild: Container(
          constraints: const BoxConstraints(
            minWidth: 120,
          ),
          color: Colors.lightGreenAccent,
        ),
        startChild: Container(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
