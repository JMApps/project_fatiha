import 'package:flutter/cupertino.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class MainSlidingSegments extends StatelessWidget {
  const MainSlidingSegments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialSegmentedControl(
        borderColor: CupertinoColors.white,
        unselectedColor: CupertinoColors.white,
        selectedColor: CupertinoColors.activeGreen,
        borderRadius: 5,
        selectionIndex: 2,
        children: {
          0: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text('0'),
          ),
          1: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text('0'),
          ),
          2: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text('0'),
          ),
          3: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text('0'),
          ),
          4: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text('0'),
          ),
        },
        onSegmentChosen: (value) {
          // Поменять index
        },
      ),
    );
  }
}
