import 'package:flutter/material.dart';
import 'package:slicing3/komponent/buttonmn.dart';
// import 'package:slicingui3/komponen/buttonmn.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return Padding(
      padding: const EdgeInsets.all(10), // P
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selmat Pagi",  
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Fulan Fulan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(spacing: 10, children: [Buttonmn(), Buttonmn(), Buttonmn()]),
        ],
      ),
    );
  }
}
