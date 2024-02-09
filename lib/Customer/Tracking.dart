import 'package:complate/Requirments/Requirments.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Tracking extends StatefulWidget {
  const Tracking({super.key});

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  late GoogleMapController mapController;

  final LatLng _center =
      const LatLng(37.7749, -122.4194); // Initial map center coordinates

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Tracking',
                style: TextStyle(fontFamily: bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              height: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 16.0,
                  ),
                  zoomControlsEnabled: false,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Package Infromation',
                      style: TextStyle(fontFamily: bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Package Size',
                                  style: TextStyle(
                                      fontFamily: bold,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Small',
                                  style: TextStyle(
                                    fontFamily: bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'State',
                                  style: TextStyle(
                                      fontFamily: bold,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'On The Way',
                                  style: TextStyle(
                                    fontFamily: bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                  color: blue, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: white),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sahand',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: bold,
                                    color: Colors.white),
                              ),
                              Text(
                                'Your courier',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: bold,
                                    color: Colors.grey[300]),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: white),
                      child: Image.asset(
                        'assets/call.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
