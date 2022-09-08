import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TajweedSurahAppBar extends StatelessWidget {
  const TajweedSurahAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade50,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Таджвид суры',
        style: TextStyle(
          color: Colors.blueGrey.shade800,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        splashColor: Colors.orange.shade100,
        splashRadius: 20,
        icon: Icon(
          CupertinoIcons.back,
          color: Colors.orange.shade400,
          size: 25,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/pictures/app_icon.png'),
          ),
        ),
      ],
    );
  }
}
