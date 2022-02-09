import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:project_fatiha/data/databases/model/tajweed.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ItemTimeLineTileTajweed extends StatelessWidget {
  const ItemTimeLineTileTajweed({
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
        height: 30,
      ),
      beforeLineStyle: const LineStyle(
        color: Color(0xFFF0BA64),
        thickness: 2,
      ),
      endChild: Card(
        margin: const EdgeInsets.only(
          left: 24,
          top: 8,
          bottom: 8,
        ),
        elevation: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          side: BorderSide(
            color: Color(0xFFF0BA64),
            width: 2,
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
                  color: Colors.black,
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