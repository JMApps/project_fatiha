import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class WriteSurahAudioList extends StatelessWidget {
  WriteSurahAudioList({Key? key}) : super(key: key);

  String dropdownValue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    final myColor = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: styleHelpers.mainMargin,
      shape: styleHelpers.mainShapeRadius,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: myColor.mainSecondaryAccentColor.withOpacity(0.3),
          borderRadius: styleHelpers.mainBorderRadius,
        ),
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            isExpanded: true,
            style: TextStyle(
              fontFamily: 'Sanfrancisco',
              color: myColor.writeSurahColor,
              fontSize: 18,
            ),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: myColor.mainPrimaryColor,
            ),
            borderRadius: styleHelpers.mainBorderRadius,
            menuMaxHeight: 300,
            alignment: Alignment.center,
            underline: const SizedBox(),
            dropdownColor: myColor.mainBackgroundColor,
            value: dropdownValue,
            items: items.map(
                  (String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(
                    items,
                  ),
                );
              },
            ).toList(),
            onChanged: (String? newValue) {},
          ),
        ),
      ),
    );
  }
}
