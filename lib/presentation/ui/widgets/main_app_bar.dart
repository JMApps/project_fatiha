import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFCE7D2E),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'الفاتحة',
        style: TextStyle(
          fontFamily: 'NotoNastaliqUrdu',
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          icon: Transform.scale(
            scale: 0.9,
            child: Image.asset('assets/icons/main_menu.png'),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
