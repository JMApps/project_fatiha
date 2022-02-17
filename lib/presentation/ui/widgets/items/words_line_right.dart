import 'package:flutter/material.dart';
import 'package:project_fatiha/data/databases/model/words.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WordsLineRight extends StatelessWidget {
  const WordsLineRight({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final int index;
  final Words item;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.9,
      indicatorStyle: IndicatorStyle(
          indicator: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFF320e1e),
            ),
            child: Center(
              child: Text(
                '${item.id}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          width: 30,
          height: 30),
      beforeLineStyle: const LineStyle(
        color: Color(0xFF775560),
        thickness: 2,
      ),
      startChild: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 24,
          bottom: 24,
        ),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(
              bottom: 16,
            ),
            child: Text(
              item.word,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
              ),
            ),
          ),
          subtitle: Text(
            item.translate,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w100,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
