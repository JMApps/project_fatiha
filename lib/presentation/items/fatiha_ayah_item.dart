import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/data/local/sqflite/model/tafseer_surah_item_model.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/pages/tafseer_ayah_bottom_sheet_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FatihaAyahItem extends StatelessWidget {
  const FatihaAyahItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final TafseerSurahItemModel item;

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
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
                item.ayahArabic,
                style: TextStyle(
                  fontSize: 30,
                  color: myColors.mainTitleColor,
                  fontFamily: 'Quran',
                  wordSpacing: 3,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item.ayahTranslation,
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
              title: Text(
                localizations.additionally,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              children: [
                Padding(
                  padding: appWidgetStyle.mainPaddingOnlyBottom,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: myColors.mainAccentColor.withOpacity(0.25),
                          borderRadius: appWidgetStyle.mainBorderRadius,
                        ),
                        child: Text(
                          item.id.toString(),
                          style: TextStyle(
                            color: myColors.mainAccentColor,
                          ),
                        ),
                      ),
                      IconButton(
                        tooltip: localizations.tafseer_ayah,
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
                                  child: TafseerAyahBottomSheetPage(item: item),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      IconButton(
                        tooltip: localizations.play_pause,
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
                        tooltip: localizations.loop_ayah,
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
                        tooltip: localizations.copy_ayah,
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
                        tooltip: localizations.share_ayah,
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
                        tooltip: localizations.share_ayah_picture,
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
