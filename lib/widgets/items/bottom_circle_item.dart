import 'package:flutter/material.dart';

class BottomCircleItem extends StatelessWidget {
  const BottomCircleItem({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: color.withOpacity(0.3),
        child: Icon(
          icon,
          color: color.withOpacity(1),
          size: 20,
        ),
      ),
      onTap: () {},
    );
  }
}
