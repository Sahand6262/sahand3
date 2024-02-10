import 'package:complate/Auth/Login.dart';
import 'package:complate/Auth/Signup.dart';
import 'package:complate/Customer/HomeScreen.dart';
import 'package:complate/Customer/Send.dart';
import 'package:complate/Customer/Tracking.dart';
import 'package:complate/Customer/nav.dart';
import 'package:complate/Welcome/Welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/Customer/HomeScreen': (context) => HomeScreen(),
      '/Customer/Send': (context) => Send(),
      '/Customer/Tracking': (context) => Tracking(),
      '/Welcome/Welcome': (context) => Welcome(),
      '/Auth/Signup': (context) => Signup(),
      '/Auth/Login': (context) => Login(),
    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Welcome();
  }
}
