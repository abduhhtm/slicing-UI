import 'package:flutter/material.dart';

class Mnkreta extends StatelessWidget {
  final String text;
  final Widget icon;
  final Color warna;
  const Mnkreta({super.key, required this.icon, required this.text, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color : warna,
          ),
          child: icon,
        ),
        Text(text, style: TextStyle(fontSize: 15),),
      ],
    );
  }
}
