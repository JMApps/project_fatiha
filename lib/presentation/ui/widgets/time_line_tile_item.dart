import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineItem extends StatelessWidget {
  const TimeLineItem({Key? key, required this.contentDescription})
      : super(key: key);

  final String contentDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TimelineDivider(
          begin: 0.1,
          end: 0.9,
          thickness: 1,
          color: Color(0xFFF0BA64),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.1,
          indicatorStyle: const IndicatorStyle(
            width: 35,
            color: Color(0xFF79380E),
          ),
          beforeLineStyle: const LineStyle(
            color: Color(0xFFF0BA64),
            thickness: 2,
          ),
          endChild: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              contentDescription,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
        ),
        const TimelineDivider(
          begin: 0.1,
          end: 0.9,
          thickness: 2,
          color: Color(0xFFF0BA64),
        ),
        TimelineTile(
          alignment: TimelineAlign.manual,
          lineXY: 0.9,
          indicatorStyle: const IndicatorStyle(
            width: 35,
            color: Color(0xFF79380E),
          ),
          beforeLineStyle: const LineStyle(
            color: Color(0xFFF0BA64),
            thickness: 2,
          ),
          startChild: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              contentDescription,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
        ),
        const TimelineDivider(
          begin: 0.1,
          end: 0.9,
          thickness: 1,
          color: Color(0xFFF0BA64),
        ),
      ],
    );
  }
}
