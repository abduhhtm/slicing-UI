import 'package:flutter/material.dart';
import 'package:slicing_ui/goput/silicing.dart';
import 'package:slicing_ui/komponen/kompo1.dart';
import 'package:slicing_ui/komponen/saldoapp.dart';
import 'ui.dart';


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
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 70, 37, 126)),
      ),
       home: AnimatedSplashScreen(
        splash: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100, 
                child: Lottie.asset('assets/splash/moon.json'),
              ),
              Text(
                "Hello",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        nextScreen: saldoapp(),
      ),
    );
  }
}

 // Aniamatedsplassreen(
      // splash: SizedBox(height: 100,child: lottie.asset('moon Loader,jeson')
      // nextScreen: page01,),),