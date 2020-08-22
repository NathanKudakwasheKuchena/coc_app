import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
              SizedBox(height: 125.0),
              SpinKitWave(
              color: Color(0xff  ),
              size: 25.0,
          ),
            ],
          ),
        ),
      ),
    );
  }
}
