import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';

class MainListItem extends StatelessWidget {
  const MainListItem({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final customStyles = CustomStyles();
    return Card(
      elevation: 1,
      margin: customStyles.mainMargin,
      shape: customStyles.mainShapeRadius,
    );
  }
}
