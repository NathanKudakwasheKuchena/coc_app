import 'package:coc_app/pages/loading.dart';
import 'package:coc_app/pages/thehub.dart';
import 'package:flutter/material.dart';
import 'package:coc_app/main.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Loading());
      case '/home':
        return MaterialPageRoute(builder: (_) => cocMain());
      case '/thehub':
        return MaterialPageRoute(builder: (_) => Hub());
    }
  }
}

