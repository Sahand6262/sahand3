import 'package:complate/Auth/Login.dart';
import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';
import 'package:complate/main.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/anywhere.png',
                  height: 350,
                  width: 500,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Delivery To Anywhere',
                      style: TextStyle(
                          color: black, fontFamily: bold, fontSize: 25),
                    ),
                    Text(
                      'Delivery Anywhere, Always On Time',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: regular,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                    color: Colors.white, fontFamily: bold, fontSize: 18),
              ),
              color: blue,
              minWidth: double.infinity,
              padding: EdgeInsets.all(15),
            ),
          )
        ],
      ),
    );
    ;
  }
}
