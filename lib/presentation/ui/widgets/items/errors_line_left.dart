import 'package:flutter/material.dart';
import 'package:project_fatiha/data/databases/model/error.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ErrorsLineLeft extends StatelessWidget {
  const ErrorsLineLeft({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final int index;
  final Error item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          indicatorStyle: IndicatorStyle(
              indicator: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF79380E),
                ),
                child: Center(
                  child: Text(
                    item.id.toString(),
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
            color: Color(0xFFF0BA64),
            thickness: 2,
          ),
          endChild: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              right: 24,
              bottom: 24,
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: Text(
                  item.errorTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              subtitle: Text(
                item.errorContent,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    color: Colors.black87),
              ),
            ),
          ),
        ),
        const TimelineDivider(
          begin: 0.1,
          end: 0.9,
          color: Color(0xFFF0BA64),
        ),
      ],
    );
  }
}
