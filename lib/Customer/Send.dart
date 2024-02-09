import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  TextEditingController _Pickedup = TextEditingController();
  TextEditingController _Destination = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Send',
              style: TextStyle(fontFamily: bold, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: blue, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: TextField(
                      controller: _Pickedup,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Picked up',
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(15)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: TextField(
                      controller: _Destination,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Destination',
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(15)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Package Size',
              style: TextStyle(fontSize: 20, fontFamily: bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '<1KG',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/package.png',
                          height: 35,
                          width: 35,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Small',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: white,
                      border: Border.all(width: 2, color: blue)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '<20KG',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        child: Image.asset(
                          'assets/package.png',
                          height: 45,
                          width: 45,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Medium',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '>50KG',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(1),
                        child: Image.asset(
                          'assets/package.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Large',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Our Service',
              style: TextStyle(fontSize: 20, fontFamily: bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/car.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Car',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/drone.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Drone',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/trcuk.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Truck',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/airplane.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Airplane',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: white,
                      border: Border.all(width: 2, color: blue)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/motor.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Motor',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/boat.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Boat',
                          style: TextStyle(fontSize: 15, fontFamily: bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: white, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Price',
                      style: TextStyle(
                          fontSize: 15, fontFamily: bold, color: blue),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '5\$',
                      style: TextStyle(
                          fontSize: 15, fontFamily: bold, color: blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Send',
                style: TextStyle(
                    color: Colors.white, fontFamily: bold, fontSize: 20),
              ),
              color: blue,
              minWidth: double.infinity,
              padding: EdgeInsets.all(10),
              elevation: Checkbox.width,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
