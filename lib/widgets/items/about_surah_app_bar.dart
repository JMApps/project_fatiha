import 'package:flutter/material.dart';

class AboutSurahAppBar extends StatelessWidget {
  const AboutSurahAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Column(
        children: const [
          Text(
            'Достоинства суры',
            style: TextStyle(
              color: Color(0xFF002581),
              fontFamily: 'Sanfcancisco',
              letterSpacing: -0.40
            ),
          ),
        ],
      ),
    );
  }
}
