import 'package:coc_app/main.dart';
import 'package:coc_app/pages/members.dart';
import 'package:coc_app/pages/thehub.dart';
import 'package:coc_app/services/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null){
      return cocMain();
    } else {
      return Hub();
    }

  }
}