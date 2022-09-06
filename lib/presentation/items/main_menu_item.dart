import 'package:flutter/material.dart';

class MainMenuItem extends StatelessWidget {
  const MainMenuItem({
    Key? key,
    required this.index,
    required this.color,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final int index;
  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(35),
        splashColor: color.withOpacity(0.3),
        child: ListTile(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          contentPadding: const EdgeInsets.all(16),
          leading: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade800,
              fontFamily: 'Ruberoid',
              letterSpacing: -0.40,
            ),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(
              color: Colors.blueGrey.shade800,
              fontFamily: 'Ruberoid',
              letterSpacing: -0.20,
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
