import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class TajweedSurahPageItem extends StatelessWidget {
  const TajweedSurahPageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Column(
      children: [
        Card(
          elevation: 3,
          color: myColor.mainLightAccentColor,
          margin: styleHelpers.marginWithoutBottom,
          shape: styleHelpers.mainTopShapeRadius,
          child: Html(data: 'بِسْمِ اللّهِ الرَّحْمَنِ الرَّحِيمِ', style: {
            '#': Style(
              wordSpacing: 5,
              padding: styleHelpers.mainPadding,
              margin: EdgeInsets.zero,
              fontSize: const FontSize(22),
              fontFamily: 'Mothanna',
              color: myColor.mainAppBarTitleColor,
              textAlign: TextAlign.center,
              direction: TextDirection.rtl,
            )
          }),
        ),
        Expanded(
          // PageStorage
          child: SingleChildScrollView(
            child: Padding(
              padding: styleHelpers.mainPaddingTopOnly,
              child: Card(
                elevation: 5,
                margin: styleHelpers.mainMarginWithoutTop,
                shape: styleHelpers.mainBottomShapeRadius,
                child: Html(
                  data:
                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Ciceros De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with: “Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.” The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesnt distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content. The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today its seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum',
                  style: {
                    '#': Style(
                      padding: styleHelpers.mainPaddingMini,
                      margin: EdgeInsets.zero,
                      fontSize: const FontSize(18),
                      textAlign: TextAlign.justify,
                    ),
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
