import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/domain/state/provider/read_surah_state.dart';
import 'package:project_fatiha/presentation/widgets/drop_down_reader_number.dart';
import 'package:provider/provider.dart';

class ReadFatihaContainer extends StatelessWidget {
  const ReadFatihaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: AssetImage(
                  'assets/pictures/surah.png',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    splashRadius: 20,
                    splashColor: Colors.red.shade100,
                    icon: Icon(
                      CupertinoIcons.play_arrow,
                      color: Colors.blueGrey.shade800,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(25),
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
                        DropdownMenuItem(
                          value: 6,
                          child: DropDownReaderNumber(
                            readerNumber: 6,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 7,
                          child: DropDownReaderNumber(
                            readerNumber: 7,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 8,
                          child: DropDownReaderNumber(
                            readerNumber: 8,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 9,
                          child: DropDownReaderNumber(
                            readerNumber: 9,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                        DropdownMenuItem(
                          value: 10,
                          child: DropDownReaderNumber(
                            readerNumber: 10,
                            positionIndex:
                                context.watch<ReadSurahState>().getReaderIndex,
                          ),
                        ),
                      ],
                      onChanged: (int? value) {
                        context.read<ReadSurahState>().changeReaderIndex(value!);
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    splashRadius: 20,
                    splashColor: Colors.red.shade100,
                    icon: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                      color: Colors.blueGrey.shade800,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '03:53',
                    style: TextStyle(color: Colors.red, letterSpacing: -0.40),
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
