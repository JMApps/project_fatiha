import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FatihaAyahItem extends StatelessWidget {
  const FatihaAyahItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.blueGrey.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 16,
          right: 16,
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                'بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey.shade900,
                  fontFamily: 'Quran'
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
              tilePadding: const EdgeInsets.symmetric(horizontal: 8),
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
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.only(top: 8),
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
                        padding: const EdgeInsets.only(top: 8),
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.folder_open,
                          color: Colors.blueGrey.shade600,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.only(top: 8),
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
                        padding: const EdgeInsets.only(top: 8),
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
                        padding: const EdgeInsets.only(top: 8),
                        splashRadius: 20,
                        splashColor: Colors.red.shade100,
                        icon: Icon(
                          CupertinoIcons.t_bubble,
                          color: Colors.blueGrey.shade600,
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
