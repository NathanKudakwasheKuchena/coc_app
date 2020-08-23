import 'package:coc_app/pages/contact.dart';
import 'package:coc_app/pages/hymns.dart';
import 'package:coc_app/pages/lessons.dart';
import 'package:coc_app/pages/loading.dart';
import 'package:coc_app/pages/members.dart';
import 'package:coc_app/services/auth.dart';
import 'package:coc_app/services/usermodel.dart';
import 'package:coc_app/services/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:coc_app/pages/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
    home: cocMain(),
  ));


class cocMain extends StatefulWidget {
  @override
  _cocMainState createState() => _cocMainState();
}

class _cocMainState extends State<cocMain> {

  int _currentIndex = 0;
  final List <Widget> pages = <Widget>[Home(), Lessons(), Hymns(), Contact(), Members()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return StreamProvider.value(
      value: AuthService().userStream,
      child: Scaffold(
        body: Center(
          child: pages.elementAt(_currentIndex),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                  color: Color(0xff00c2cb),),
                title: Text("Home",
                  style: TextStyle(
                    color: Color(0xff00c2cb),
                      fontFamily: "DidactGothic"
                  ),
                )
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.library_books,
                  color: Color(0xff00c2cb),),
                title: Text("Lessons", style: TextStyle(
                  color: Color(0xff00c2cb),
                    fontFamily: "DidactGothic"
                ),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music,
                  color: Color(0xff00c2cb),),
                title: Text("Hymns", style: TextStyle(
                  color: Color(0xff00c2cb),
                    fontFamily: "DidactGothic"
                ),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone,
                  color: Color(0xff00c2cb),),
                title: Text("Contact Us", style: TextStyle(
                  color: Color(0xff00c2cb),
                    fontFamily: "DidactGothic"
                ),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                  color: Color(0xff00c2cb),),
                title: Text("Members", style: TextStyle(
                    color: Color(0xff00c2cb),
                    fontFamily: "DidactGothic"
                ),
                )
            )
          ],
          onTap: _onItemTapped,
        ),),
    );
  }
}
