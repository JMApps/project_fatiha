import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    return AppBar(
      centerTitle: true,
      elevation: 0,
      shape: styleHelpers.mainAppBarShapeRadius,
      title: Text(
        'الفاتحة',
        style: TextStyle(
          color: Theme.of(context).colorScheme.mainAppBarTitleColor,
          fontFamily: 'Mothanna',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
