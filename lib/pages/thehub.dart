import 'package:coc_app/pages/announce.dart';
import 'package:coc_app/pages/news.dart';
import 'package:flutter/material.dart';

class Hub extends StatefulWidget {
  @override
  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {

  int _currentIndex = 0;
  final List <Widget> pages = <Widget>[News(),Announce()];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: pages.elementAt(_currentIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.speaker_notes,
                color: Color(0xff00c2cb),),
              title: Text("News",
                style: TextStyle(
                    color: Color(0xff00c2cb),
                    fontFamily: "DidactGothic"
                ),
              )
          ),


          BottomNavigationBarItem(
              icon: Icon(Icons.announcement,
                color: Color(0xff00c2cb),),
              title: Text("Post", style: TextStyle(
                  color: Color(0xff00c2cb),
                  fontFamily: "DidactGothic"
              ),
              )
          )
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
