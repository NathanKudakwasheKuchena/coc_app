import 'package:coc_app/services/auth.dart';
import 'package:coc_app/services/usermodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {

  final AuthService _auth = AuthService();
  final _formkey =  GlobalKey<FormState>();

  // text field state
  String email = '';
  String password = '';
  String error = '';

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
        body: SafeArea(child: Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Form(
        key: _formkey,
      child: Column(
      children: <Widget>[
      SizedBox(height: 20.0),
        Text(
          "Enter email",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "DidactGothic",
            fontSize: 25.0,
            color: Color(0xff00c2cb),
          ),
        ),
        SizedBox(height: 5.0),
      TextFormField(
        validator: (val) => val.isEmpty ? "Enter an email" : null,
      onChanged: (val) {
      setState(() => email = val);
      },
      ),
      SizedBox(height: 20.0),
        Text(
          "Enter password",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "DidactGothic",
            fontSize: 25.0,
            color: Color(0xff00c2cb),
          ),
        ),
        SizedBox(height: 5.0),
      TextFormField(
      obscureText: true,
        validator: (val) => val.length < 6 ? "Enter a password 6+ letters long" : null,
      onChanged: (val) {
      setState(() => password = val);
      },
      ),
      SizedBox(height: 20.0),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
              color: Color(0xff00c2cb),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white
                ),
              ),
      onPressed: () async {
        if (_formkey.currentState.validate()) {
          dynamic result = await _auth.signInEmailPassword(email, password);
          if (result == null) {
            setState(() {
              error = 'Please supply valid login credentials';
            });
          }
        }
      }
          ),
          RaisedButton(
          color: Color(0xff00c2cb),
          child: Text(
          "Register",
          style: TextStyle(color: Colors.white
          ),
          ),
              onPressed: () async {
                if(_formkey.currentState.validate()){
                  dynamic result = await _auth.registerEmailPassword(email, password);
                  if(result == null) {
                    setState(() {
                      error = 'Please supply a valid email';
                    });
                  }
                }
              }
          ),
            SizedBox(height: 12.0),
            ]
          ),
        Text(
          error,
          style: TextStyle(color: Colors.red, fontSize: 14.0),
        )
        ],
      ),
      ),
        )
      )
    );
  }
}
