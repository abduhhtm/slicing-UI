import 'package:flutter/material.dart'; 
import 'package:slicing05/Halaman/homepage.dart';
// import 'package:slicing05/silicing%20yg%20akan%20datang/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Homepage(),
    );
  }
}

