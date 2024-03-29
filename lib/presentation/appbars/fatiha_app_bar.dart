import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';

class FatihaAppBar extends StatelessWidget {
  const FatihaAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
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
                tooltip: localizations.share_app_picture,
                splashRadius: 20,
                splashColor: myColors.lightIconSplashColor,
                icon: Image.asset(
                  height: 20,
                  width: 20,
                  'assets/icons/share.png',
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
                localizations.open_book,
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
