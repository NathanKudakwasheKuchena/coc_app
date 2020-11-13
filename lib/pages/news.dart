import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  // Carousel

  int _currentIndex = 0;
  List imgList = [
  Text(
  "We believe it is our responsibility to share God’s word with the world, and we try to do this through various ministries designed to serve the community we are in and cater for it’s most pressing needs.",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontFamily: "DidactGothic",
  fontSize: 18.0,
  color: Colors.grey[650],
  ),
  ),
    Text(
      "We believe it is our responsibility to share God’s word with the world, and we try to do this through various ministries designed to serve the community we are in and cater for it’s most pressing needs.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "DidactGothic",
        fontSize: 18.0,
        color: Colors.grey[650],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Color(0xff00c2cb),
            child: SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0,5.0,0.0, 7.5),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CarouselSlider(
                      options: CarouselOptions(height: 280.0,
                          initialPage: 0,
                          autoPlay: false,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true),
                      items: imgList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Color(0xff00c2cb),
                              ),
                              child: Image.asset(i, fit: BoxFit.fill),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
