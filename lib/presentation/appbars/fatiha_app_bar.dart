import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';

class FatihaAppBar extends StatelessWidget {
  const FatihaAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: myColors.mainAppBarColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.elliptical(35, 35),
          bottomRight: Radius.elliptical(35, 35),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          AppBar(
            backgroundColor: myColors.mainAppBarColor,
            title: Text(
              'سورة الفاتحة',
              style: TextStyle(
                fontFamily: 'Mothanna',
                fontSize: 25,
                color: myColors.mainAccentColor,
              ),
              textAlign: TextAlign.center,
            ),
            leading: const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                'assets/pictures/app_icon.png',
              ),
            ),
            actions: [
              IconButton(
                tooltip: 'Поделиться qr-кодом',
                splashRadius: 20,
                splashColor: myColors.lightIconSplashColor,
                icon: Icon(
                  CupertinoIcons.share,
                  color: myColors.mainIconColor,
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
                'Открывающая Книгу',
                style: TextStyle(
                  fontFamily: 'Aqum',
                  fontSize: 14,
                  color: myColors.mainTitleColor,
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
