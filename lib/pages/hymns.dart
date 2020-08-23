import 'package:flutter/material.dart';

class Hymns extends StatefulWidget {
  @override
  _HymnsState createState() => _HymnsState();
}

class _HymnsState extends State<Hymns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00c2cb),
        centerTitle: true,
        title: Text(
          "Hymns",
          style: TextStyle(
            fontFamily: "DidactGothic"
          ),
        ),
      ),
      body: SafeArea(child: Text("2 JESU NDISHAMWARI WEDU"
    "Jesu ndishamwari wedu Mununuri wakanaka Tinokomborerwa kwazvo Tine hama"
      ),
      ),
    );
  }
}
