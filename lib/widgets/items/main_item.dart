import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/config/styles/custom_styles.dart';

class MainItem extends StatelessWidget {
  MainItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  final customStyles = CustomStyles();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        contentPadding: const EdgeInsets.only(
          left: 16,
          top: 16,
          right: 16,
        ),
        title: Text(title),
        trailing: const Icon(CupertinoIcons.forward),
      ),
      onTap: () {},
    );
  }
}
