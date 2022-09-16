import 'dart:io';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_fatiha/data/local/sqflite/model/tafseer_surah_item_model.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/pages/tafseer_ayah_bottom_sheet_page.dart';
import 'package:project_fatiha/presentation/widgets/ayah_picture_for_share.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class FatihaAyahItem extends StatelessWidget {
  FatihaAyahItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final TafseerSurahItemModel item;
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    final myColors = Theme.of(context).colorScheme;
    final localizations = AppLocalizations.of(context)!;
    return Card(
      color: myColors.translationCardColor,
      margin: appWidgetStyle.mainMargin,
      shape: appWidgetStyle.mainShape,
      child: Center(
        child: SingleChildScrollView(
          padding: appWidgetStyle.mainPadding,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  item.ayahArabic,
                  style: TextStyle(
                    fontSize: 32,
                    color: myColors.mainTitleColor,
                    fontFamily: 'Quran',
                    wordSpacing: -3,
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.ayahTranslation,
                style: TextStyle(
                  fontSize: 22,
                  color: myColors.mainPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ExpansionTile(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        tooltip: localizations.tafseer_ayah,
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        color: myColors.mainIconColor,
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
                        color: myColors.mainIconColor,
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
                        color: myColors.mainIconColor,
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
                        color: myColors.mainIconColor,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Image.asset(
                          'assets/icons/copy.png',
                          height: 20,
                          width: 20,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {
                          FlutterClipboard.copy(
                                  '${item.ayahArabic}\n${item.ayahTranslation}\n\n${item.ayahTafseer}')
                              .then(
                            (value) {
                              final snackBar = SnackBar(
                                shape: appWidgetStyle.mainShape,
                                backgroundColor: myColors.mainPrimaryColor,
                                content: Text(
                                  localizations.copied_ayah,
                                  style: TextStyle(
                                    color: myColors.translationCardColor,
                                  ),
                                ),
                                clipBehavior: Clip.antiAlias,
                                duration: const Duration(milliseconds: 900),
                                behavior: SnackBarBehavior.floating,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                          );
                        },
                      ),
                      IconButton(
                        tooltip: localizations.share_ayah,
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        color: myColors.mainIconColor,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Image.asset(
                          'assets/icons/share.png',
                          height: 20,
                          width: 20,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () {
                          Share.share(
                            '${item.ayahArabic}\n${item.ayahTranslation}\n\n${item.ayahTafseer}',
                            sharePositionOrigin:
                                const Rect.fromLTWH(0, 0, 10, 10),
                          );
                        },
                      ),
                      IconButton(
                        tooltip: localizations.share_ayah_picture,
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        color: myColors.mainIconColor,
                        splashColor: myColors.lightIconSplashColor,
                        icon: Image.asset(
                          'assets/icons/share_picture.png',
                          height: 20,
                          width: 20,
                          color: myColors.mainIconColor,
                        ),
                        onPressed: () async {
                          final unit8List =
                              await _screenshotController.captureFromWidget(
                            AyahPictureForShare(item: item),
                            delay: const Duration(seconds: 0),
                          );
                          String tempPath = (Platform.isAndroid
                                  ? await getExternalStorageDirectory()
                                  : await getApplicationDocumentsDirectory())!
                              .path;
                          File file = File('$tempPath/ayah_${item.id}.jpg');
                          await file.writeAsBytes(unit8List);
                          await Share.shareFiles(
                            [file.path],
                            sharePositionOrigin:
                                const Rect.fromLTWH(0, 0, 10, 10),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
