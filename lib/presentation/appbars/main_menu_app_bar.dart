import 'package:flutter/cupertino.dart';
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
          fontSize: 16,
          letterSpacing: -0.40,
        ),
      ),
      leading: Icon(
        CupertinoIcons.airplane,
        color: Colors.blueGrey.shade800,
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
    // return Container(
    //   decoration: const BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.only(
    //       bottomLeft: Radius.elliptical(45, 50),
    //       bottomRight: Radius.elliptical(45, 50),
    //     ),
    //   ),
    //   child: Wrap(
    //     alignment: WrapAlignment.center,
    //     runAlignment: WrapAlignment.center,
    //     crossAxisAlignment: WrapCrossAlignment.center,
    //     children: [
    //       AppBar(
    //         elevation: 0,
    //         backgroundColor: Colors.white,
    //         leading: Icon(
    //           CupertinoIcons.airplane,
    //           color: Colors.blueGrey.shade800,
    //         ),
    //         actions: [
    //           IconButton(
    //             splashRadius: 20,
    //             splashColor: Colors.red.shade100,
    //             icon: Icon(
    //               CupertinoIcons.share,
    //               color: Colors.blueGrey.shade800,
    //             ),
    //             onPressed: () {
    //               // Делиться заранее заготовленной картинкой с QR кодом
    //             },
    //           ),
    //         ],
    //       ),
    //       Column(
    //         children: [
    //           Text(
    //             'سورة الفاتحة',
    //             style: TextStyle(
    //               fontFamily: 'Mothanna',
    //               fontSize: 23,
    //               color: Colors.red.shade400,
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //           Text(
    //             'Открывающая Книгу',
    //             style: TextStyle(
    //               fontFamily: 'Aqum',
    //               fontSize: 12,
    //               color: Colors.blueGrey.shade800,
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //           const SizedBox(height: 16),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
