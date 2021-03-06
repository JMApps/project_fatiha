import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:project_fatiha/data/databases/model/tajweed.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TajweedLineLeft extends StatelessWidget {
  const TajweedLineLeft({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final int index;
  final Tajweed item;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.1,
      indicatorStyle: IndicatorStyle(
        indicator: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff1c3116),
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
        height: 30,
      ),
      beforeLineStyle: const LineStyle(
        color: Color(0xFF54614d),
        thickness: 2,
      ),
      endChild: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          side: BorderSide(
            color: Color(0xFF54614d),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                item.ayah,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1c3116),
                  fontFamily: 'UthmanicRegular',
                ),
              ),
              const SizedBox(height: 8),
              Html(
                data: item.tajweedContent,
                style: {
                  '#': Style(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    fontSize: const FontSize(18),
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                  ),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
