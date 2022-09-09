import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/pages/tafseer_ayah_bottom_sheet_page.dart';

class FatihaAyahItem extends StatelessWidget {
  const FatihaAyahItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: appWidgetStyle.mainMarginOnlyBottom,
      color: Colors.blueGrey.shade50,
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
                  color: Colors.blueGrey.shade900,
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
                color: Colors.blueGrey.shade900,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            ExpansionTile(
              tilePadding: appWidgetStyle.mainPaddingHorizontalMini,
              controlAffinity: ListTileControlAffinity.trailing,
              childrenPadding: EdgeInsets.zero,
              collapsedIconColor: Colors.blueGrey.shade800,
              collapsedTextColor: Colors.blueGrey.shade800,
              textColor: Colors.red.shade400,
              iconColor: Colors.red.shade400,
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
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.play,
                          color: Colors.blueGrey.shade600,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.arrow_2_circlepath,
                          color: Colors.blueGrey.shade600,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.doc_on_doc,
                          color: Colors.blueGrey.shade600,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.share,
                          color: Colors.blueGrey.shade600,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.photo,
                          color: Colors.blueGrey.shade600,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: appWidgetStyle.mainPaddingOnlyTopMini,
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.t_bubble,
                          color: Colors.blueGrey.shade600,
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
