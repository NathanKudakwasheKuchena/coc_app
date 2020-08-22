import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Carousel

  int _currentIndex = 0;
  List imgList = [
    "assets/sailesw1.jpg",
    "assets/sailesw2.jpg",
    "assets/sailesw3.jpg",
    "assets/sailesw4.jpg",
    "assets/sailesw5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff00c2cb),
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(height: 280.0, initialPage: 0, autoPlay: true, enlargeCenterPage: true),
                  items: imgList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.amber
                            ),
                            child: Image.asset(i, fit: BoxFit.fill),
                        );
                      },
                    );
                  }).toList(),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}
