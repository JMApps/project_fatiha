import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';

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
      color: Theme.of(context).colorScheme.mainBackgroundColor,
      child: Container(
        width: double.infinity,
        height: 75,
        padding: customStyles.mainPadding,
        decoration: BoxDecoration(
        ),
        child: Text(
          'Yes $currentIndex',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
