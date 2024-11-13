import 'package:flutter/material.dart';
import 'package:tea_shop/pages/home.dart';

class Pageset extends StatefulWidget {
  const Pageset({super.key});

  @override
  State<Pageset> createState() => _PagesetState();
}

class _PagesetState extends State<Pageset> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home_filled, color: Color(0xFFC67C4E),), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_sharp), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ],
      onTap: (value) {

      },
      ),
    );
  }
}
