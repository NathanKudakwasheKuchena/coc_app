import 'package:flutter/material.dart';

class Hub extends StatefulWidget {
  @override



  _HubState createState() => _HubState();
}

class _HubState extends State<Hub> {
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
                color: Color(0xff00c2cb),),
              title: Text("Home",
                style: TextStyle(
                    color: Color(0xff00c2cb),
                    fontFamily: "DidactGothic"
                ),
              )
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt,
                color: Color(0xff00c2cb),),
              title: Text("Gallery", style: TextStyle(
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
      ),
    );
  }
}
