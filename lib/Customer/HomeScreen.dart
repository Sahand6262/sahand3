import 'package:complate/Customer/Send.dart';
import 'package:complate/Customer/Tracking.dart';
import 'package:flutter/material.dart';
import 'package:complate/Requirments/Requirments.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: white),
                  child: Image.asset(
                    'assets/face.PNG',
                    width: 45,
                    height: 45,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Sahand',
                        style: TextStyle(fontSize: 20, fontFamily: bold),
                      ),
                      Text(
                        'How can delivery for you?',
                        style: TextStyle(
                            fontSize: 15, fontFamily: bold, color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: PageView(
              controller: PageController(initialPage: 1, viewportFraction: 0.9),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/Card3.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/card.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/card2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    width: 160,
                    decoration: BoxDecoration(
                        color: blue, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/send.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Container(
                          child: Text(
                            'Send a \n Package',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tracking()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 160,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/map.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Container(
                            child: Text(
                              'Track \nDelivery',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              'Recent Activity',
              style: TextStyle(fontSize: 20, fontFamily: bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Image.asset(
                              'assets/pack.png',
                              width: 35,
                              height: 35,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order ID:D4U-29329',
                                  style:
                                      TextStyle(fontFamily: bold, fontSize: 18),
                                ),
                                Text(
                                  '13 Aug 2022 3.03 AM',
                                  style: TextStyle(
                                      fontFamily: bold,
                                      fontSize: 15,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '1.75\$',
                              style: TextStyle(fontFamily: bold, fontSize: 18),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(20, 76, 175, 79),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                'Successfull',
                                style: TextStyle(
                                    fontFamily: bold,
                                    fontSize: 15,
                                    color: Colors.green),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
