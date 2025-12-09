import 'package:flutter/material.dart';
import 'package:slicing05/decoration/set.dart';
import 'package:slicing05/komponen/appbar.dart';
import 'package:slicing05/komponen/flashsale.dart';
import 'package:slicing05/komponen/iklanbanner.dart';
import 'package:slicing05/komponen/menuapp.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClassName.color5,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Appbar(),
              SizedBox(height: 150),
              Iklanbanner(),
              SizedBox(height: 10),
              Menuapp(),
              SizedBox(height: 10),
              Flashsale(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: Icon(Icons.discount)),
            IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            IconButton(onPressed: () {}, icon: Icon(Icons.badge)),
          ],
        ),
      ),
    );
  }
}
