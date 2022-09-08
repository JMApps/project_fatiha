import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FatihaAppBar extends StatelessWidget {
  const FatihaAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(45, 50),
          bottomRight: Radius.elliptical(45, 50),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/pictures/app_icon.png'),
            ),
            actions: [
              IconButton(
                splashRadius: 20,
                splashColor: Colors.red.shade100,
                icon: Icon(
                  CupertinoIcons.share,
                  color: Colors.blueGrey.shade800,
                ),
                onPressed: () {
                  // Делиться заранее заготовленной картинкой с QR кодом
                },
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'سورة الفاتحة',
                style: TextStyle(
                  fontFamily: 'Mothanna',
                  fontSize: 25,
                  color: Colors.red.shade400,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Открывающая Книгу',
                style: TextStyle(
                  fontFamily: 'Aqum',
                  fontSize: 14,
                  color: Colors.blueGrey.shade800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
            ],
          )
        ],
      ),
    );
  }
}
