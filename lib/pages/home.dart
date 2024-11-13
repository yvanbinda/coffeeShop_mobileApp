import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/coffee_type.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            //Lineared Container
            sectionLocation(),

            //Location Info
            sectionlocation(),

            // //TextField
            Positioned(
              top: 150,
              left: 20,
              right: 120,
              child:  TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  fillColor: Colors.transparent,
                  hintText: 'Search coffee',
                  prefixIcon: Icon(Icons.search),
                  prefixStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            // Button
            Positioned(
              top: 150,
              left: 330,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Button,
                ),
                height: 55,
                width: 50,
                child: Center(child: Icon(Icons.read_more, color: Colors.white,)),
              ),
            ),

            // Promo Banner
            sectionBanner(),

            // Coffee Category
            Positioned(
              bottom: 300,
              right: 20,
              left: 20,
              child: Container(
                height: 70,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CoffeeType(text: Text("All Coffee", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),color: Color(0xFFC67C4E),),
                      CoffeeType(text: Text("Machiato"),color: Buttonlight,),
                      CoffeeType(text: Text("Latte"),color: Buttonlight,),
                      CoffeeType(text: Text("Americana"),color: Buttonlight,),
                      CoffeeType(text: Text("Africa"),color: Buttonlight,),
                      CoffeeType(text: Text("Lorem"),color: Buttonlight,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

  sectionLocation() {
    return Positioned(
      top: 0,
      child: Container(
        width: 500,
        height: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFF111111)],
            begin: Alignment(-8,12),
            end: Alignment(1,2),
          ),
        ),
      ),
    );
  }

  sectionlocation() {
    return Positioned(
      top: 50,
      child:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Location", style: TextStyle(color: Colors.grey, fontSize: 18),),
            Row(
              children: [
                Text("Bilzen, Tanjungbalai", style: TextStyle(color: Colors.white, fontSize: 18),),
                Icon(Icons.keyboard_arrow_down_outlined,color: Colors.grey,),
              ],
            ),
          ],
        ),
      ),
    );
  }

  sectionBanner() {
    return Positioned(
      top: 230,
      right: 20,
      left: 20,
      bottom: 380,
      child: Container(
        foregroundDecoration: BoxDecoration(),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Banner 1.png"),fit: BoxFit.fill,),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text("Promo"),
          ],
        ),
        height: 100,
        width: 250,
      ),
    );
  }
}
