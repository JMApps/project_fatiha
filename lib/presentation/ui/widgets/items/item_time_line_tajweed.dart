import 'package:flutter/material.dart';
import 'package:project_fatiha/data/databases/model/db_tajweed.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ItemTimeLineTajweed extends StatelessWidget {
  const ItemTimeLineTajweed({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final int index;
  final DbTajweed item;

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
          height: 30),
      beforeLineStyle: const LineStyle(
        color: Color(0xFFF0BA64),
        thickness: 2,
      ),
      endChild: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '${item.ayah}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'С именем Аллаха, Милостивого, Милосердного!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  child: Text(
                    '${item.tajweedTitle}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  '${item.tajweedContent}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(indent: 16, endIndent: 16),
          ],
        ),
      ),
    );
  }
}
