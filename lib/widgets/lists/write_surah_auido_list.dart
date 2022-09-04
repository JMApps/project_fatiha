import 'package:flutter/material.dart';
import 'package:project_fatiha/config/themes/app_themes.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class WriteSurahAudioList extends StatelessWidget {
  WriteSurahAudioList({Key? key}) : super(key: key);

  String dropdownValue = 'Чтец 1';

  var items = [
    'Чтец 1',
    'Чтец 2',
    'Чтец 3',
    'Чтец 4',
    'Чтец 5',
    'Чтец 6',
    'Чтец 7',
    'Чтец 8',
    'Чтец 9',
    'Чтец 10'
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
