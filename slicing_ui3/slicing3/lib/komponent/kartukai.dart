import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing3/komponent/kartukaimn.dart';
// import 'package:slicingui3/komponen/kartukaimn.dart';

class Kartukai extends StatelessWidget {
  const Kartukai({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: -80,
      child: Container(
        // height: 100,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 3,
              offset: Offset(0, 5),
            ),
          ],
        ),

        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset("assets/KAUPAYS.png"),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp 500.000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(LucideIcons.chevronRight),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60, child: VerticalDivider()),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kartukaimn(
                        icon: Icon(
                          LucideIcons.scan,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        text: "Scan",
                      ),

                      Kartukaimn(
                        icon: Icon(
                          LucideIcons.history,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        text: "Riwayat",
                      ),

                      Kartukaimn(
                        icon: Icon(
                          LucideIcons.wallet,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        text: "Top Up",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 20, color: Colors.blueGrey),
            Row(
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.monetization_on, color: Colors.yellow),
                    Text("0 Railpoints"),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text("basic"),
                      Icon(LucideIcons.chevronRight),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
