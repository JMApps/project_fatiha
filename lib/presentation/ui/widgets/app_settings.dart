import 'package:flutter/material.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Center(
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              child: const Text('Settings'),
            ),
          ),
        )
      ],
    );
  }
}
