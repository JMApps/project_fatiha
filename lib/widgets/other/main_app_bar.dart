import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Column(
        children: [
          Text(
            'الفاتحة',
            style: TextStyle(
              color: Theme.of(context).colorScheme.mainAppBarTitleColor,
              fontFamily: 'Mothanna',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
