import 'package:flutter/material.dart';

class kompo1 extends StatelessWidget {
  final String text;
  final String logo;
  const kompo1({super.key, required this.text, required this.logo});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: BoxBorder.all(color: Colors.red, width: 2.5)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                    child: Image.asset(logo),
                  ),
                  Text(text, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                ],
                ),
            ) ;
  }
}