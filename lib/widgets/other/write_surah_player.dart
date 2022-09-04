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
      color: myColor.mainPrimaryColor,
      borderRadius: styleHelpers.writeOnlyTopRadius,
      child: Container(
        padding: styleHelpers.mainPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              splashRadius: 20,
              icon: Icon(
                CupertinoIcons.play,
                color: myColor.mainIconColor,
              ),
              onPressed: () {},
            ),
            Expanded(
              child: Slider.adaptive(
                value: 0,
                onChanged: (double onChanged) {},
              ),
            ),
            IconButton(
              splashRadius: 20,
              icon: Icon(
                CupertinoIcons.arrow_2_squarepath,
                color: myColor.mainIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              splashRadius: 20,
              icon: Icon(
                CupertinoIcons.speedometer,
                color: myColor.mainIconColor,
              ),
              onPressed: () {},
            ),
            Text(
              '03:34',
              style: TextStyle(
                color: myColor.mainTitleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
