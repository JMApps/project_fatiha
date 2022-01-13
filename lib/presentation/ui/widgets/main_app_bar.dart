import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFCE7D2E),
      elevation: 0,
      leading: Transform.scale(
        scale: 0.6,
        child: Image.asset('assets/icons/f_logo_end.png'),
      ),
      title: Text(
        title,
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
