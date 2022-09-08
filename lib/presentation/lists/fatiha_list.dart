import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/items/fatiha_ayah_item.dart';

class FatihaList extends StatelessWidget {
  const FatihaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 16,
          top: 16,
          right: 16,
        ),
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return const FatihaAyahItem();
        },
      ),
    );
  }
}
