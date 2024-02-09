import 'package:complate/Requirments/Requirments.dart';
import 'package:complate/Welcome/Page1.dart';
import 'package:complate/Welcome/Page2.dart';
import 'package:complate/Welcome/Page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: [Page1(), Page2(), Page3()],
        ),
        Container(
          alignment: Alignment(0, 0.90),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            axisDirection: Axis.horizontal,
            effect: SlideEffect(
              spacing: 8.0,
              radius: 12.0,
              dotWidth: 20.0,
              dotHeight: 16.0,
              strokeWidth: 1.5,
              dotColor: Colors.grey,
              type: SlideType.slideUnder,
              activeDotColor: blue,
            ),
          ),
        )
      ],
    ));
  }
}
