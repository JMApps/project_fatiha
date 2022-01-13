import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarErrorInReadingFatiha extends StatelessWidget {
  const AppBarErrorInReadingFatiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFCE7D2E),
      elevation: 0.3,
      leading: const Icon(Icons.translate),
      title: const Text(
        'Ошибки',
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
