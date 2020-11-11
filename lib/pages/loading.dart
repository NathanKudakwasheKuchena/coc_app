import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      // Pushing a named route
      Navigator.of(context).pushNamed(
        '/home',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 150.0),
              Image.asset("assets/logomain.png"),
              SizedBox(height: 85.0),
              SpinKitWave(
                color: Color(0xff00c2cb),
                size: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
