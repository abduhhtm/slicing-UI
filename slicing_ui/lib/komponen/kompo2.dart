import 'package:flutter/material.dart';

class kompo2 extends StatelessWidget {
  final String logo;
  final String text;
  const kompo2({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        SizedBox(width: 30,child: Image.asset(logo)),
        Text("text")
      ],
    );
  }
}