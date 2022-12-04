import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/read_surah_state.dart';
import 'package:project_fatiha/domain/theme/app_theme.dart';
import 'package:project_fatiha/main.dart';
import 'package:project_fatiha/presentation/widgets/drop_down_reader_number.dart';
import 'package:provider/provider.dart';

class ReadFatihaContainer extends StatelessWidget {
  const ReadFatihaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final readPlayer = context.watch<ReadSurahState>();
    final myColors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                  myColors.mainTitleColor,
                  BlendMode.srcATop,
                ),
                image: const AssetImage(
                  'assets/pictures/surah.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 0,
            margin: appWidgetStyle.mainMargin,
            shape: appWidgetStyle.mainShape,
            child: Padding(
              padding: appWidgetStyle.mainPaddingHorizontalNormalVerticalMini,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    splashRadius: 20,
                    splashColor: myColors.lightIconSplashColor,
                    icon: Icon(
                      readPlayer.getPlayingState
                          ? CupertinoIcons.pause
                          : CupertinoIcons.play,
                      color: myColors.mainIconColor,
                    ),
                    onPressed: () {
                      context.read<ReadSurahState>().playPause();
                    },
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton(
                      borderRadius: appWidgetStyle.mainBorderRadius,
                      value: context.watch<ReadSurahState>().getReaderIndex,
                      isExpanded: true,
                      underline: const SizedBox(),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: DropDownReaderNumber(
                            readerNumber: 1,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: DropDownReaderNumber(
                            readerNumber: 2,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 3,
                          child: DropDownReaderNumber(
                            readerNumber: 3,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 4,
                          child: DropDownReaderNumber(
                            readerNumber: 4,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 5,
                          child: DropDownReaderNumber(
                            readerNumber: 5,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                      ],
                      onChanged: (int? value) {
                        context
                            .read<ReadSurahState>()
                            .changeReaderIndex(value!);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    splashRadius: 20,
                    splashColor: myColors.lightIconSplashColor,
                    icon: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                      color: context.watch<ReadSurahState>().getTrackLoopState
                          ? myColors.mainAccentColor
                          : myColors.mainIconColor,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '03:53',
                    style: TextStyle(
                      color: myColors.mainAccentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
