import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing05/decoration/set.dart';

class Flashsale extends StatelessWidget {
  const Flashsale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
      decoration: BoxDecoration(color: const Color.fromARGB(255, 230, 29, 29)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flash Sale",
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                 kontenFl(
                  gambar:
                      "https://i.gojekapi.com/darkroom/gomart-public-production/v2/images/public/images/051f70a5-f9d6-48db-8401-cb410a2ad1ff_Sweety-Silver-Popok-Perekat-Bayi-Nb-S-40-Pcs.jpg",
                  text: "Pampers Bayi",
                  info1: "Pampers Bayi silver",
                  info2: "merk Sweety",
                  info3: "Rp. 100.000.,-",
                ),
                kontenFl(
                  gambar:
                      "https://i0.wp.com/rajasusu.com/wp-content/uploads/2023/01/HUKI-EMPENG-SILICONE.jpg?fit=800%2C800&ssl=1",
                  text: "Empeng Bayi",
                  info1: "Empeng Bayi Kater",
                  info2: "Merk Huki",
                  info3: "Rp. 90.000,-",
                ),
                kontenFl(
                  gambar:
                      "https://img.id.my-best.com/product_images/5be26efb15370aed05808a37afcd5988.png?ixlib=rails-4.3.1&q=70&lossless=0&w=800&h=800&fit=clip&s=ebd7fab5b3404d3ab1a70d0fe6ff650c",
                  text: "Susu Bayi",
                  info1: "Susu Bayi umur 3 bulan",
                  info2: "Merk Bebelove",
                  info3: "Rp. 120.000,-",
                ),
                kontenFl(
                  gambar:
                      "https://ae-pic-a1.aliexpress-media.com/kf/S4d270b5f228449c689141007da630e9bk.jpg",
                  text: "Baju Bayi",
                  info1: "Baju Tidur Bayi",
                  info2: "Merk Lembut",
                  info3: "Rp. 13.000.000,-",
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class kontenFl extends StatelessWidget {
  final String gambar;
  final String text;
  final String info1;
  final String info2;
  final String info3;
  const kontenFl({
    super.key,
    required this.gambar,
    required this.text,
    required this.info1,
    required this.info2,
    required this.info3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ClassName.color5,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(gambar, fit: BoxFit.cover),
          ),
          Container(
            height: 15,
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: ClassName.color1,
              borderRadius: BorderRadius.only(topRight: Radius.circular(25)),
            ),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.openSans(
                  fontSize: 8,
                  color: ClassName.color5,
                ),
              ),
            ),
          ),
          //ini untuk informasi produk
          Text(
            info1,
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            info2,
            style: GoogleFonts.openSans(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            info3,
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Produk Online",
            style: GoogleFonts.openSans(
              fontSize: 6,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
