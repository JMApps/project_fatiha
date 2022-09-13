import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project_fatiha/data/local/sqflite/model/tafseer_surah_item_model.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/pages/tafseer_ayah_bottom_sheet_page.dart';
import 'package:word_selectable_text/word_selectable_text.dart';

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
              child: WordSelectableText(
                selectable: true,
                highlight: true,
                text: item.ayahArabic,
                style: TextStyle(
                  fontSize: 29,
                  color: myColors.mainTitleColor,
                  fontFamily: 'Quran',
                  wordSpacing: 3,
                ),
                textDirection: TextDirection.rtl,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item.ayahTranslation,
              style: TextStyle(
                fontSize: 18,
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
                      IconButton(
                        tooltip: localizations.tafseer_ayah,
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Image.asset(
                          'assets/icons/tafseer.png',
                          height: 20,
                          width: 20,
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
                                  duration: const Duration(milliseconds: 200),
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
                        icon: Image.asset(
                          'assets/icons/play.png',
                          height: 20,
                          width: 20,
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
                        icon: Image.asset(
                          'assets/icons/repeat.png',
                          height: 20,
                          width: 20,
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
                        icon: Image.asset(
                          'assets/icons/copy.png',
                          height: 20,
                          width: 20,
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
                        icon: Image.asset(
                          'assets/icons/share.png',
                          height: 20,
                          width: 20,
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
                        icon: Image.asset(
                          'assets/icons/share_picture.png',
                          height: 20,
                          width: 20,
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
