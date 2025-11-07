import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:slicing3/komponent/bener.dart';
import 'package:slicing3/komponent/kartukai.dart';
import 'package:slicing3/komponent/menuatas.dart';
import 'package:slicing3/komponent/mnitem.dart';
import 'package:slicing3/komponent/mnkreta.dart';
import 'package:slicing3/komponent/trip.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    image: DecorationImage(
                      image: AssetImage('assets/stasiun.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Menuatas(),
                  ),
                ),
                Kartukai(),
              ],
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  spacing: 15,
                  children: [
                    Mnkreta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white,),
                      text: 'Antar Kota',
                      warna: Colors.blue,
                    ),
                    Mnkreta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white,),
                      text: 'Lokal',
                      warna: Colors.  orange,
                    ),
                    Mnkreta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white),
                      text: 'Komuter',
                      warna: Colors.pink,
                    ),
                    Mnkreta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white),
                      text: 'LRT',
                      warna: Colors.purple,
                    ),
                    Mnkreta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white),
                      text: 'Bandara',
                      warna: Colors.blueAccent,
                    ),
                    Mnkreta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white),
                      text: 'Whoosh',
                      warna: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            // ini menu item
            SizedBox(height: 30),
            Mnitem(),
            Trip(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promo Terbaru",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.5, color: Colors.blue),
                    ),
                    child: Text("Lihat Semua", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            Bener(),
          ],
        ),
      ),
    );
  }
}
