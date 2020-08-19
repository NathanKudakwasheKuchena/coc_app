import 'package:coc_app/pages/contact.dart';
import 'package:coc_app/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:coc_app/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    "/": (context) => Loading(),
    "/home": (context) => Home(),
    "/contact": (context) => Contact(),
  },
));

