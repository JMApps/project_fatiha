import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';

class MainItem extends StatelessWidget {
  const MainItem({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final customStyles = CustomStyles();
    return Card(
      elevation: 1,
      margin: currentIndex.isOdd
          ? customStyles.fromLeftMargin
          : customStyles.fromRightMargin,
      shape: currentIndex.isOdd
          ? customStyles.fromLeftShapeRadius
          : customStyles.fromRightShapeRadius,
      child: Container(
        width: double.infinity,
        height: 75,
        padding: customStyles.mainPadding,
        decoration: BoxDecoration(
            borderRadius: currentIndex.isOdd
                ? customStyles.fromLeftBorderRadius
                : customStyles.fromRightBorderRadius,
            color: Colors.blue[50]),
        child: Text(
          'Yes $currentIndex',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
