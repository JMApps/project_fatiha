import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_fatiha/presentation/ui/widgets/app_settings.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFd8e6cc),
      elevation: 0,
      centerTitle: true,
      title: Transform.scale(
        scale: 0.3,
        child: Image.asset('assets/icons/f_logo.png'),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          highlightColor: const Color(0xff1c3116).withOpacity(0.1),
          icon: Transform.scale(
            scale: 0.9,
            child: Image.asset('assets/icons/main_menu.png'),
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) {
                return const AppSettings();
              },
            );
          },
        ),
      ],
    );
  }
}
