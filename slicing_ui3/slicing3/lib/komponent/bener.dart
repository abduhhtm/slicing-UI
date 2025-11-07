import 'package:flutter/material.dart';

class Bener extends StatelessWidget {
  const Bener({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 150,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/stasiun.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 150,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/stasiun.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 150,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/stasiun.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 150,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/stasiun.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 150,
              width: 370,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/stasiun.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
