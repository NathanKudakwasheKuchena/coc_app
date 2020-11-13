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
    "assets/sailesw5.jpg",
    "assets/logomain.png"
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
                        autoPlay: true,
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
                  SizedBox(height: 2.5),
                  Text(
                    "Welcome...",
                    style: TextStyle(
                      fontFamily: "DidactGothic",
                      fontSize: 50.0,
                      color: Color(0xff00c2cb),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Located in the hub of Zimbabwe’s second-largest city, City Center Church of Christ is a family of God’s people whose goal is to grow spiritually, constantly strengthening our relationship with our father in heaven. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "DidactGothic",
                      fontSize: 18.0,
                      color: Colors.grey[650],
                    ),
                  ),
                  SizedBox (height: 15.0),
                  Text(
                    "We believe it is our responsibility to share God’s word with the world, and we try to do this through various ministries designed to serve the community we are in and cater for it’s most pressing needs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "DidactGothic",
                      fontSize: 18.0,
                      color: Colors.grey[650],
                    ),
                  ),
                  SizedBox (height: 15.0),
                  Text(
                    "Are you looking for a church home where you'll have many opportunities to grow spiritually and serve others? We encourage you to consider City Center Church of Christ. Please visit with us and let us show you how committed we are to reaching the lost. Our mission statement (A Christ-centered family sharing the Gospel and serving the community with love.) perfectly represents our mission at City Center Church of Christ and we want you to be a part of it.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "DidactGothic",
                      fontSize: 18.0,
                      color: Colors.grey[650],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
