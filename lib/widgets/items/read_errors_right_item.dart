import 'package:flutter/material.dart';
import 'package:project_fatiha/utils/helpers/style_helpers.dart';

class ReadErrorsRightItem extends StatelessWidget {
  const ReadErrorsRightItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleHelpers = StyleHelpers();
    return Card(
      elevation: 3,
      margin: styleHelpers.mainMarginLeftBottomOnly,
      shape: styleHelpers.readErrorLeftOnlyShapeRadius,
      child: Padding(
        padding: styleHelpers.mainPadding,
        child: const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
