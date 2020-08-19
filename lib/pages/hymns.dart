import 'package:flutter/material.dart';

class Hymns extends StatefulWidget {
  @override
  _HymnsState createState() => _HymnsState();
}

class _HymnsState extends State<Hymns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Hymns page"),),
    );
  }
}
