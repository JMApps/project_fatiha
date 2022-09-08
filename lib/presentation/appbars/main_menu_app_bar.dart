import 'package:flutter/material.dart';

class MainMenuAppBar extends StatelessWidget {
  const MainMenuAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey.shade50,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Главное меню',
        style: TextStyle(
          color: Colors.blueGrey.shade800,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: const CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/pictures/app_icon.png'),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          splashColor: Colors.red.shade100,
          icon: Icon(
            Icons.apps_sharp,
            color: Colors.blueGrey.shade800,
          ),
          onPressed: () {
            // Делиться заранее заготовленной картинкой с QR кодом
          },
        ),
      ],
    );
  }
}
