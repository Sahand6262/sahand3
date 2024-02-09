import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:complate/Customer/HomeScreen.dart';
import 'package:complate/Customer/Send.dart';
import 'package:complate/Customer/Tracking.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int currentindex = 0;
  final List<Widget> _Page = [
    HomeScreen(),
    Send(),
    Tracking(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Page[currentindex],
      bottomNavigationBar: Container(
        color: white,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: GNav(
          duration: Duration(milliseconds: 700),
          gap: 8,
          color: Colors.grey,
          activeColor: Colors.blue,
          iconSize: 30,
          tabBackgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabActiveBorder: Border.all(color: Colors.blue),
          selectedIndex: currentindex,
          onTabChange: (index) {
            setState(() {
              currentindex = index;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.inventory_2_outlined,
              text: 'Send',
            ),
            GButton(
              icon: Icons.my_location_outlined,
              text: 'Tracking',
            ),
          ],
        ),
      ),
    );
  }
}
