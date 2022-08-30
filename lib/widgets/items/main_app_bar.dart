import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Column(
        children: const [
          Text(
            'الفاتحة',
            style: TextStyle(
              color: Color(0xFF002581),
              fontFamily: 'Mothanna',
            ),
          ),
        ],
      ),
    );
  }
}
