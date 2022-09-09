import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/pages/tafseer_ayah_bottom_sheet_page.dart';

class FatihaAyahItem extends StatelessWidget {
  const FatihaAyahItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    return Card(
      color: myColors.translationCardColor,
      margin: appWidgetStyle.mainMarginOnlyBottom,
      shape: appWidgetStyle.mainShape,
      child: Padding(
        padding: appWidgetStyle.mainPaddingWithoutBottom,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
                style: TextStyle(
                  fontSize: 30,
                  color: myColors.mainTitleColor,
                  fontFamily: 'Quran',
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'С именем Аллаха, Милостивого, Милосердного',
              style: TextStyle(
                fontSize: 16,
                color: myColors.mainPrimaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              tilePadding: appWidgetStyle.mainPaddingHorizontalMini,
              controlAffinity: ListTileControlAffinity.trailing,
              childrenPadding: EdgeInsets.zero,
              collapsedIconColor: myColors.mainIconColor,
              collapsedTextColor: myColors.mainIconColor,
              textColor: myColors.mainAccentColor,
              iconColor: myColors.mainAccentColor,
              title: const Text(
                'Дополнительно',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              children: [
                Padding(
                  padding: appWidgetStyle.mainPaddingOnlyBottom,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Icon(
                          CupertinoIcons.play,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Icon(
                          CupertinoIcons.arrow_2_circlepath,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Icon(
                          CupertinoIcons.doc_on_doc,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Icon(
                          CupertinoIcons.share,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Icon(
                          CupertinoIcons.photo,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Icon(
                          CupertinoIcons.t_bubble,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return SizedBox(
                                height: 500,
                                child: AnimatedPadding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.decelerate,
                                  child: const TafseerAyahBottomSheetPage(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
