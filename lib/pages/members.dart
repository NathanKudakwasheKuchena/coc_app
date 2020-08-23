import 'package:flutter/material.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00c2cb),
        centerTitle: true,
        title: Text(
          "Members",
          style: TextStyle(
              fontFamily: "DidactGothic"
          ),
        ),
      ),
      body: SafeArea(child: Text("Members page"),),
    );
  }
}
