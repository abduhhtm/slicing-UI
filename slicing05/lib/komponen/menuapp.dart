import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing05/decoration/set.dart';
// import 'package:slicing_ui_5/decoration/set.dart';

class Menuapp extends StatelessWidget {
  const Menuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(10), 
      child: Column( crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Lihat Semua Promo", 
            style: GoogleFonts.openSans(
              fontSize: 12, 
              fontWeight: FontWeight.w400,
              color: Colors.blue[900],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
              Komponenmenu(iconApps: "stamp 1.png", labels: "Produk Baru"),
            ],
          ),
        ],
      ),
    );
  }
}

class Komponenmenu extends StatelessWidget {
    final String iconApps;
  final String labels;
  const Komponenmenu({super.key, required this.iconApps, required this.labels});
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ClassName.color4,
                  image: DecorationImage(image: AssetImage(iconApps),
            ),
          ),
        ),
        SizedBox(height: 5,),
        Text(labels, style: GoogleFonts.openSans(fontSize: 8, ),),
      ],
    );
  }
}