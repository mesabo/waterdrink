import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  GridItems(
      {Key? key,
      this.icon = Icons.flutter_dash,
      this.color = Colors.teal,
      this.title = 'the title',
      this.ontap})
      : super(key: key);
  final icon, color, title, ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 52,
            color: color,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
