import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Image.asset(
              'assets/welcome.png',
              height: 350,
              width: 500,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  'Welcome To SwiftDelivery',
                  style:
                      TextStyle(color: black, fontFamily: bold, fontSize: 25),
                ),
                Text(
                  'Welcome to swiftdelivery around world',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: regular, fontSize: 15),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
