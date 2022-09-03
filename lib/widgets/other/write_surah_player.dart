import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class WriteSurahPlayer extends StatelessWidget {
  const WriteSurahPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Material(
      color: myColor.mainAccentColor,
      borderRadius: styleHelpers.mainBorderRadius,
      child: Container(
        padding: styleHelpers.mainPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              splashRadius: 20,
              icon: const Icon(
                CupertinoIcons.backward_end,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              splashRadius: 20,
              icon: const Icon(
                CupertinoIcons.play,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              splashRadius: 20,
              icon: const Icon(
                CupertinoIcons.forward_end,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
