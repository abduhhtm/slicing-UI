import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing05/decoration/set.dart';

class Card01 extends StatelessWidget {
  const Card01({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            KomponenCard(
              text: "3.869",
              gambar: "assets/dollar 1.png",
              warna: Colors.blueAccent,
              labels: "Tukar Point",
            ),
            Spacer(),
            SizedBox(height: 20, child: VerticalDivider(),),
            KomponenCard(
              text: "9",
              gambar: "assets/voucher 1.png",
              warna: Colors.black,
              labels: "Voucher",
            ),
            SizedBox(width: 10,),
            SizedBox(height: 20, child: VerticalDivider(),),
            KomponenCard(
              text: "2",
              gambar: "assets/stamp 1.png",
              warna: Colors.black,
              labels: "Stamp",
            ),
            SizedBox(width: 10,),
            SizedBox(height: 20, child: VerticalDivider(),),
            KomponenCard(
              text: "0",
              gambar: "assets/star (1) 1.png",
              warna: Colors.black,
              labels: "Star",
            ),
            SizedBox(width: 10,),
          ],
        ), 
        Divider(), 
        Row(
          spacing: 5,
          children: [
            Image.asset("virgo.png", height: 15,),
            Text("Sambungkan Virgo", style: GoogleFonts.openSans(fontSize: 12, color:  ClassName.color2),),
            Icon(Icons.arrow_forward_ios_rounded, size: 12,),
            Spacer(),
            Container(
              padding: EdgeInsets.all(10), 
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5), 
                borderRadius: BorderRadius.circular(5),
              ), child: Row( spacing: 5,
                children: [
                  Image.asset("assets/product 1.png", height: 13,),
                  Text("Barcode Member", style: GoogleFonts.openSans(fontSize: 8, fontWeight: FontWeight.w400, color: Colors.blue[900]),),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class KomponenCard extends StatelessWidget {
  final String text;
  final String gambar;
  final String labels;
  final Color warna; 
  const KomponenCard({super.key, required this.text, required this.gambar, required this.labels, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(gambar, height: 13,), 
            SizedBox(width: 5,),
            Text(
              text, 
              style: 
              GoogleFonts.poppins(
                fontSize: 13, 
                color: Colors.black, 
                fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 3,),
        Text(
          labels, 
          style: GoogleFonts.openSans(
            fontSize: 8, 
            color: warna,
          ),
        ),
      ],
    );
  }
}