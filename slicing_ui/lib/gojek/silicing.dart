import 'package:flutter/material.dart';
import 'package:slicing_ui/komponen/benerinfo.dart';
import 'package:slicing_ui/komponen/kompo1.dart';
import 'package:slicing_ui/komponen/menuapp.dart';
import 'package:slicing_ui/komponen/saldoapp.dart';

class slicing1 extends StatelessWidget {
  const slicing1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
               height: 400,
               width: double.infinity,
               decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [Colors.pinkAccent, Colors.white]
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 230, 229, 229),
                          hintText: 'mau makan apa hari ini?',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      )
                      ),
                    CircleAvatar() 

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    Text(
                      "Menu favorit anda",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    SizedBox(
                      width: 150,
                      height: 200,
                      child: Image.asset('assets/fast food.png'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                   kompo1(logo: 'assets/burger.png', text: 'Promo trus',),
                   kompo1(logo: 'assets/store.png', text: 'Restoran',),
                   kompo1(logo: 'assets/orange-juice.png', text: 'Minuman',),
                   kompo1(logo: 'assets/vegetables.png', text: 'Buah & Sayur',),
                   ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              spacing: 20,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Menuapp1(),Menuapp1(),Menuapp1(),Menuapp1(),],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Menuapp1(),Menuapp1(),Menuapp1(),Menuapp1(),],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Cek promo hari ini !",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: PageView(
                children: [
                  Bannerinfo(banner: 'assets/Group 12.png'),
                  Bannerinfo(banner: 'assets/Group 12.png'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 10, child: Icon(Icons.home, size: 30)),
            ),
            SizedBox(width: 60),
            IconButton(
              onPressed: () {},
              icon: SizedBox(height: 10, child: Icon(Icons.sell, size: 30)),
            ),
            SizedBox(width: 60),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 10,
                child: Icon(Icons.message_outlined, size: 30),
              ),
            ),
            SizedBox(width: 60),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                height: 10,
                child: Icon(Icons.shopping_bag_sharp, size: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
