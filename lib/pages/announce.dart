import 'package:coc_app/services/auth.dart';
import 'package:coc_app/services/usermodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Announce extends StatefulWidget {
  @override
  _AnnounceState createState() => _AnnounceState();
}

class _AnnounceState extends State<Announce> {
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
            "Announcements/Prayer request",
            style: TextStyle(
                fontFamily: "DidactGothic"
            ),
          ),
        ),
        body: SafeArea(child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  "Type in your announcement/Prayer request",
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

                SizedBox(height: 5.0),

                SizedBox(height: 20.0),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Center(
                        child: RaisedButton(
                            color: Color(0xff00c2cb),
                            child: Text(
                              "Send",
                              style: TextStyle(color: Colors.white
                              ),
                            ),
                            onPressed: () async {
                                  setState(() {
                                    error = 'Sent successfully';
                                  });
                            }
                        ),
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
