import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/appbars/read_error_app_bar.dart';

class ReadErrorPage extends StatelessWidget {
  const ReadErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: ReadErrorAppBar(),
      ),
      body: Container(),
    );
  }
}
