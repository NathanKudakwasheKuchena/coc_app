import 'package:flutter/material.dart';

class Hub extends StatefulWidget {
  @override
  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00c2cb),
        centerTitle: true,
        title: Text(
          "Members Home",
          style: TextStyle(
              fontFamily: "DidactGothic"
          ),
        ),
      ),
      body: SafeArea(child: Text("The Hub"),),
    );
  }
}
