import 'package:coc_app/pages/contact.dart';
import 'package:coc_app/pages/hymns.dart';
import 'package:coc_app/pages/lessons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List <Widget> pages = <Widget>[Home(), Lessons(), Hymns(), Contact()];

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
            icon: Icon(Icons.home,
            color: Colors.amber,),
            title: Text("Home",
            style: TextStyle(
              color: Colors.amber,
            ),
            )
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.library_books,
              color: Colors.amber,),
              title: Text("Lessons", style: TextStyle(
                color: Colors.amber,
              ),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music,
              color: Colors.amber,),
              title: Text("Hymns", style: TextStyle(
                color: Colors.amber,
              ),
              )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone,
            color: Colors.amber,),
            title: Text("Contact Us", style: TextStyle(
              color: Colors.amber,
            ),
            )
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
