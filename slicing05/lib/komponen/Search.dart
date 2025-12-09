import 'package:flutter/material.dart';
import 'package:slicing05/decoration/set.dart';
// import 'package:slicing_ui_5/decoration/set.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //kotak pencarian
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true, 
              fillColor: ClassName.color5, 
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                ),
                constraints: BoxConstraints(maxHeight: 35),
                contentPadding: EdgeInsets.all(0),
                prefixIcon: Icon(Icons.search),
                hintText: "Vitamin Untuk Anak",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        //kotak scan & favorite
        Container(
          height: 35, 
          width: 35, 
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5), 
            border: Border.all(color: ClassName.color5, 
            width: 0.8),
          ),
          child: Image.asset("assets/card-scan 1.png"),
        ),
        Container(
          height: 35, 
          width: 35, 
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5), 
            border: Border.all(color: ClassName.color5, 
            width: 0.8),
          ),
          child: Image.asset("assets/favorite 1.png"),
        ),
      ],
    );
  }
}