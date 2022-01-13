import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarAboutFatiha extends StatelessWidget {
  const AppBarAboutFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFCE7D2E),
      elevation: 0.3,
      leading: Transform.scale(
        scale: 0.8,
        child: Image.asset(
          'assets/icons/f_logo_end_50.png'),
      ),
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
