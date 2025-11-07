import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing3/komponent/mnkreta.dart';

class Mnitem extends StatelessWidget {
  const Mnitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Mnkreta(
            icon: Icon(LucideIcons.hotel, size: 35, color: Colors.blue,),
            text: "hotel",
            warna: Colors.blue.withOpacity(0.2),
          ),
          Mnkreta(
            icon: Icon(LucideIcons.cardSim, size: 35, color: Colors.blue,),
            text: "Kartu",
            warna: Colors.blue.withOpacity(0.2),
          ),
          Mnkreta(
            icon: Icon(LucideIcons.gift, size: 35, color: Colors.blue,),
            text: "Logistik",
            warna: Colors.blue.withOpacity(0.2),
          ),
          Mnkreta(
            icon: Icon(LucideIcons.circleEllipsis, size: 35, color: Colors.blue,),
            text: "Lainnya",
            warna: Colors.blue.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
