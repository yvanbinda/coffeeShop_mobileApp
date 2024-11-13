import 'package:flutter/material.dart';
import 'package:tea_shop/pages/pageset.dart';

import 'home.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 230,
            child: Container(
              width: 500,
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.transparent,Colors.black],
                  begin: Alignment(0,-1),
                  end: Alignment(0,0.1),
                  stops: [0.8, 1.0],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 230,
            right: -20,
            child: Container(
              height: 600,
              width: 450,
              child: Image.asset("assets/images/Image Onboarding.png", fit: BoxFit.fitHeight,),
            ),
          ),
          Positioned(
            top: 480,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  " Fall in Love with \nCoffee in Blissful\n       Delight!",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 40),),
                Text("Welcome to our cozy coffee corner, where \n        every cup is a delightful for you.",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 15,
            child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pageset(),));
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Color(0xFFC67C4E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Text("Get Started", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),)),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
