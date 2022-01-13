import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarAboutFatiha extends StatelessWidget {
  const AppBarAboutFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFCE7D2E),
      elevation: 0.3,
      leading: const Icon(Icons.translate),
      title: const Text(
        'О Фатихе',
      ),
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.text_alignright),
          onPressed: () {},
        ),
      ],
    );
  }
}
